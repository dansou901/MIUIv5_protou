.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;,
        Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 171
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 178
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 146
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 151
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 156
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 166
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 189
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 191
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 192
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 194
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 195
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 196
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .parameter "address"

    .prologue
    .line 550
    const/4 v2, 0x0

    .line 553
    .local v2, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 554
    .local v0, addressType:I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 555
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 557
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 569
    .end local v0           #addressType:I
    :goto_1
    return-object v3

    .line 558
    .restart local v0       #addressType:I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 560
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 565
    .end local v0           #addressType:I
    :catch_0
    move-exception v1

    .line 566
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 561
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #addressType:I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 563
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 22
    .parameter "field"

    .prologue
    .line 576
    packed-switch p1, :pswitch_data_0

    .line 737
    :pswitch_0
    const/16 v20, 0x3

    .line 740
    :goto_0
    return v20

    .line 578
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 581
    .local v19, version:I
    if-nez v19, :cond_1

    .line 582
    const/16 v20, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 740
    .end local v19           #version:I
    :cond_0
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .line 584
    .restart local v19       #version:I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 591
    .end local v19           #version:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 592
    .local v18, textString:[B
    if-nez v18, :cond_2

    .line 593
    const/16 v20, 0x2

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 597
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 603
    .end local v18           #textString:[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 605
    .local v3, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_3

    .line 606
    const/16 v20, 0x2

    goto :goto_0

    .line 610
    :cond_3
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 611
    aget-object v20, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 612
    .local v17, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_4

    .line 613
    const/16 v20, 0x1

    goto :goto_0

    .line 616
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 617
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 610
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 623
    .end local v3           #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14           #i:I
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 626
    .local v12, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    new-instance v20, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    const-string v21, "insert-address-token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 631
    :cond_5
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 633
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 635
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v13

    .line 639
    .local v13, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 641
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 642
    .restart local v17       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_7

    .line 643
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 646
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 648
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 649
    .local v11, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 650
    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 661
    .end local v11           #flen:I
    .end local v12           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    .line 662
    .local v16, octet:I
    if-nez v16, :cond_8

    .line 663
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 666
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 667
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 671
    .end local v16           #octet:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 672
    .local v4, date:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v4

    if-nez v20, :cond_9

    .line 673
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 676
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 681
    .end local v4           #date:J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 683
    .local v6, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_a

    .line 684
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 687
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 688
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 692
    .end local v6           #enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v15

    .line 693
    .local v15, messageClass:[B
    if-nez v15, :cond_b

    .line 694
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 697
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 698
    const-string v20, "advertisement"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 700
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 701
    :cond_c
    const-string v20, "auto"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 703
    const/16 v20, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 704
    :cond_d
    const-string v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 706
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 707
    :cond_e
    const-string v20, "informational"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 709
    const/16 v20, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 711
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 717
    .end local v15           #messageClass:[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 718
    .local v7, expiry:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v7

    if-nez v20, :cond_10

    .line 719
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 722
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v10

    .line 727
    .local v10, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 728
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 730
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v9

    .line 731
    .local v9, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 732
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    const/4 v0, 0x5

    .line 1479
    if-nez p0, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return v0

    .line 1483
    :cond_1
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1485
    const/4 v0, 0x3

    goto :goto_0

    .line 1486
    :cond_2
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1488
    const/4 v0, 0x1

    goto :goto_0

    .line 1489
    :cond_3
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1491
    const/4 v0, 0x2

    goto :goto_0

    .line 1492
    :cond_4
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1494
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 844
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 847
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 851
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 852
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 855
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 867
    :cond_1
    :goto_0
    return v0

    .line 860
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 865
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 867
    goto :goto_0
.end method

.method private makeDeliveryInd()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 875
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v0, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 877
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 881
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 882
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 885
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 888
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 891
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 894
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 897
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 899
    return v1
.end method

.method private makeMessageBody(I)I
    .locals 37
    .parameter "PduType"

    .prologue
    .line 1049
    const/16 v33, 0x0

    .line 1050
    .local v33, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const/16 v32, 0x0

    .line 1053
    .local v32, retrieve:Lcom/google/android/mms/pdu/RetrieveConf;
    const/16 v35, 0x80

    move/from16 v0, p1

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v33, v0

    .end local v33           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    check-cast v33, Lcom/google/android/mms/pdu/SendReq;

    .line 1059
    .restart local v33       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v20

    .line 1064
    .local v20, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v35, v0

    const/16 v36, 0x84

    invoke-virtual/range {v35 .. v36}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1065
    .local v10, contentType:Ljava/lang/String;
    sget-object v35, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1066
    .local v12, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v12, :cond_2

    .line 1068
    const/16 v35, 0x1

    .line 1336
    :cond_0
    :goto_1
    return v35

    .line 1056
    .end local v10           #contentType:Ljava/lang/String;
    .end local v12           #contentTypeIdentifier:Ljava/lang/Integer;
    .end local v20           #ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v32, v0

    .end local v32           #retrieve:Lcom/google/android/mms/pdu/RetrieveConf;
    check-cast v32, Lcom/google/android/mms/pdu/RetrieveConf;

    .restart local v32       #retrieve:Lcom/google/android/mms/pdu/RetrieveConf;
    goto :goto_0

    .line 1071
    .restart local v10       #contentType:Ljava/lang/String;
    .restart local v12       #contentTypeIdentifier:Ljava/lang/Integer;
    .restart local v20       #ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1073
    const/4 v5, 0x0

    .line 1075
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x78

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x59

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_3

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v36, 0x1b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 1078
    :cond_3
    const-string v35, "PduParser"

    const-string v36, "Aplix - PduComposer.makeMessageBody()"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v15

    .line 1086
    .local v15, ctExtension:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    if-eqz v33, :cond_5

    .line 1087
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeApplicationId()[B

    move-result-object v16

    .line 1088
    .local v16, ctExtensionArray:[B
    if-eqz v16, :cond_4

    .line 1089
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1090
    .local v18, ctExtensionString:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_4

    .line 1091
    const-string v35, "Application-ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1092
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1096
    .end local v18           #ctExtensionString:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeReplyToApplicationId()[B

    move-result-object v16

    .line 1097
    if-eqz v16, :cond_5

    .line 1098
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1099
    .restart local v18       #ctExtensionString:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_5

    .line 1100
    const-string v35, "Reply-To-Application-ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1101
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1107
    .end local v16           #ctExtensionArray:[B
    .end local v18           #ctExtensionString:Ljava/lang/String;
    :cond_5
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v17

    .line 1109
    .local v17, ctExtensionLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1113
    if-eqz v33, :cond_8

    .line 1114
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1117
    :goto_2
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v35

    if-nez v35, :cond_c

    .line 1119
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1120
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1121
    .local v19, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1122
    if-lez v17, :cond_7

    .line 1123
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1125
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1128
    const-wide/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1130
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 1116
    .end local v19           #ctLength:I
    :cond_8
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_2

    .line 1136
    .end local v15           #ctExtension:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v17           #ctExtensionLength:I
    :cond_9
    if-eqz v33, :cond_b

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v35, v0

    check-cast v35, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1140
    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v35

    if-nez v35, :cond_c

    .line 1142
    :cond_a
    const-wide/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1145
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 1139
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v35, v0

    check-cast v35, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_3

    .line 1151
    :cond_c
    const/16 v35, 0x0

    :try_start_0
    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v27

    .line 1153
    .local v27, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v34

    .line 1154
    .local v34, start:[B
    if-eqz v34, :cond_d

    .line 1155
    const/16 v35, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1156
    const/16 v35, 0x3c

    const/16 v36, 0x0

    aget-byte v36, v34, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    const/16 v35, 0x3e

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-byte v36, v34, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    .line 1157
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1165
    :cond_d
    :goto_4
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x18

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_12

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v35, :cond_12

    .line 1167
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1168
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    .end local v27           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v34           #start:[B
    :cond_e
    :goto_5
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x78

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_f

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x59

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_f

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v36, 0x1b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 1183
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1186
    :cond_10
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1187
    .restart local v19       #ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1188
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1192
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v31

    .line 1193
    .local v31, partNum:I
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1194
    const/16 v24, 0x0

    .local v24, i:I
    :goto_6
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_20

    .line 1195
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v27

    .line 1196
    .restart local v27       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 1199
    .local v4, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 1202
    .local v11, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v28

    .line 1204
    .local v28, partContentType:[B
    if-nez v28, :cond_13

    .line 1206
    const/16 v35, 0x1

    goto/16 :goto_1

    .line 1159
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v19           #ctLength:I
    .end local v24           #i:I
    .end local v28           #partContentType:[B
    .end local v31           #partNum:I
    .restart local v34       #start:[B
    :cond_11
    :try_start_1
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1176
    .end local v27           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v34           #start:[B
    :catch_0
    move-exception v22

    .line 1177
    .local v22, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_5

    .line 1170
    .end local v22           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v27       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v34       #start:[B
    :cond_12
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v35

    const/16 v36, 0x23

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_e

    .line 1171
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1172
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 1210
    .end local v34           #start:[B
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v19       #ctLength:I
    .restart local v24       #i:I
    .restart local v28       #partContentType:[B
    .restart local v31       #partNum:I
    :cond_13
    sget-object v35, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1212
    .local v29, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v29, :cond_1a

    .line 1213
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1222
    :goto_7
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v26

    .line 1224
    .local v26, name:[B
    if-nez v26, :cond_14

    .line 1225
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v26

    .line 1227
    if-nez v26, :cond_14

    .line 1228
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v26

    .line 1230
    if-nez v26, :cond_14

    .line 1237
    const-string v35, "application/smil"

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 1249
    :cond_14
    if-eqz v26, :cond_15

    .line 1250
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1251
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1256
    :cond_15
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 1257
    .local v7, charset:I
    if-eqz v7, :cond_16

    .line 1258
    const/16 v35, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1259
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1262
    :cond_16
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1263
    .local v13, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1264
    int-to-long v0, v13

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1268
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1270
    .local v8, contentId:[B
    if-eqz v8, :cond_17

    .line 1271
    const/16 v35, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1272
    const/16 v35, 0x3c

    const/16 v36, 0x0

    aget-byte v36, v8, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    const/16 v35, 0x3e

    array-length v0, v8

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-byte v36, v8, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 1273
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1280
    :cond_17
    :goto_8
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1281
    .local v9, contentLocation:[B
    if-eqz v9, :cond_18

    .line 1282
    const/16 v35, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1283
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1287
    :cond_18
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v23

    .line 1289
    .local v23, headerLength:I
    const/16 v21, 0x0

    .line 1290
    .local v21, dataLength:I
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v30

    .line 1292
    .local v30, partData:[B
    if-eqz v30, :cond_1d

    .line 1293
    const/16 v35, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1294
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    .line 1326
    :cond_19
    :goto_9
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v35

    sub-int v35, v35, v23

    move/from16 v0, v21

    move/from16 v1, v35

    if-eq v0, v1, :cond_1f

    .line 1327
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "BUG: Length sanity check failed"

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 1215
    .end local v7           #charset:I
    .end local v8           #contentId:[B
    .end local v9           #contentLocation:[B
    .end local v13           #contentTypeLength:I
    .end local v21           #dataLength:I
    .end local v23           #headerLength:I
    .end local v26           #name:[B
    .end local v30           #partData:[B
    :cond_1a
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_7

    .line 1242
    .restart local v26       #name:[B
    :cond_1b
    const/16 v35, 0x1

    goto/16 :goto_1

    .line 1275
    .restart local v7       #charset:I
    .restart local v8       #contentId:[B
    .restart local v13       #contentTypeLength:I
    :cond_1c
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1297
    .restart local v9       #contentLocation:[B
    .restart local v21       #dataLength:I
    .restart local v23       #headerLength:I
    .restart local v30       #partData:[B
    :cond_1d
    const/4 v14, 0x0

    .line 1299
    .local v14, cr:Ljava/io/InputStream;
    const/16 v35, 0x400

    :try_start_3
    move/from16 v0, v35

    new-array v6, v0, [B

    .line 1300
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v35, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1301
    const/16 v25, 0x0

    .line 1302
    .local v25, len:I
    :goto_a
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v25

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_21

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v25

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 1305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v35, v0

    add-int v35, v35, v25

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1306
    add-int v21, v21, v25

    goto :goto_a

    .line 1308
    .end local v6           #buffer:[B
    .end local v25           #len:I
    :catch_1
    move-exception v22

    .line 1309
    .local v22, e:Ljava/io/FileNotFoundException;
    const/16 v35, 0x1

    .line 1316
    if-eqz v14, :cond_0

    .line 1317
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 1318
    :catch_2
    move-exception v22

    .line 1320
    .local v22, e:Ljava/io/IOException;
    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1310
    .end local v22           #e:Ljava/io/IOException;
    :catch_3
    move-exception v22

    .line 1311
    .restart local v22       #e:Ljava/io/IOException;
    const/16 v35, 0x1

    .line 1316
    if-eqz v14, :cond_0

    .line 1317
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 1318
    :catch_4
    move-exception v22

    goto :goto_b

    .line 1312
    .end local v22           #e:Ljava/io/IOException;
    :catch_5
    move-exception v22

    .line 1313
    .local v22, e:Ljava/lang/RuntimeException;
    const/16 v35, 0x1

    .line 1316
    if-eqz v14, :cond_0

    .line 1317
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    .line 1318
    :catch_6
    move-exception v22

    goto :goto_b

    .line 1315
    .end local v22           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v35

    .line 1316
    if-eqz v14, :cond_1e

    .line 1317
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1315
    :cond_1e
    :goto_c
    throw v35

    .line 1330
    .end local v14           #cr:Ljava/io/InputStream;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1331
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1332
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1194
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_6

    .line 1336
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7           #charset:I
    .end local v8           #contentId:[B
    .end local v9           #contentLocation:[B
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13           #contentTypeLength:I
    .end local v21           #dataLength:I
    .end local v23           #headerLength:I
    .end local v26           #name:[B
    .end local v27           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #partContentType:[B
    .end local v29           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v30           #partData:[B
    :cond_20
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 1318
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v7       #charset:I
    .restart local v8       #contentId:[B
    .restart local v9       #contentLocation:[B
    .restart local v11       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v13       #contentTypeLength:I
    .restart local v14       #cr:Ljava/io/InputStream;
    .restart local v21       #dataLength:I
    .restart local v23       #headerLength:I
    .restart local v26       #name:[B
    .restart local v27       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v28       #partContentType:[B
    .restart local v29       #partContentTypeIdentifier:Ljava/lang/Integer;
    .restart local v30       #partData:[B
    :catch_7
    move-exception v22

    .line 1320
    .local v22, e:Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 1316
    .end local v22           #e:Ljava/io/IOException;
    .restart local v6       #buffer:[B
    .restart local v25       #len:I
    :cond_21
    if-eqz v14, :cond_19

    .line 1317
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_9

    .line 1318
    :catch_8
    move-exception v22

    .line 1320
    .restart local v22       #e:Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 808
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 811
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 815
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 816
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 819
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 837
    :cond_1
    :goto_0
    return v0

    .line 824
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 829
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 835
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 837
    goto :goto_0
.end method

.method private makePdu(I)I
    .locals 9
    .parameter "PduType"

    .prologue
    const/16 v8, 0x98

    const/16 v7, 0x92

    const/16 v6, 0x8b

    const/16 v5, 0x83

    const/4 v3, 0x1

    .line 916
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v4, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 918
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 923
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 924
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 940
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 941
    .local v2, trid:[B
    if-nez v2, :cond_1

    const/16 v4, 0x80

    if-ne p1, v4, :cond_1

    .line 943
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Transaction-ID is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 946
    :cond_1
    if-eqz v2, :cond_2

    .line 947
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 948
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 954
    :cond_2
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1042
    :cond_3
    :goto_0
    return v3

    .line 959
    :cond_4
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 962
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 966
    const/4 v1, 0x0

    .line 969
    .local v1, recipient:Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 970
    const/4 v1, 0x1

    .line 974
    :cond_5
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 975
    const/4 v1, 0x1

    .line 979
    :cond_6
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 980
    const/4 v1, 0x1

    .line 984
    :cond_7
    if-eqz v1, :cond_3

    .line 989
    const/16 v3, 0x96

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 993
    const/16 v3, 0x8a

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 996
    const/16 v3, 0x88

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 999
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x78

    if-eq v3, v4, :cond_8

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x59

    if-eq v3, v4, :cond_8

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_9

    .line 1002
    :cond_8
    const-string v3, "PduParser"

    const-string v4, "Aplix - appendHeader(PduHeaders.DELIVERY_TIME)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/16 v3, 0x87

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1007
    :cond_9
    const/16 v3, 0x8f

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1010
    const/16 v3, 0x86

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1015
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1017
    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1020
    :cond_a
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-lez v3, :cond_b

    .line 1022
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1026
    :cond_b
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1027
    .local v0, contentLocation:[B
    if-eqz v0, :cond_c

    .line 1028
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1029
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1036
    :cond_c
    const/16 v3, 0x90

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1039
    const/16 v3, 0x84

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1042
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move-result v3

    goto/16 :goto_0
.end method

.method private makeReadOrigInd()I
    .locals 1

    .prologue
    .line 752
    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadRecInd()I
    .locals 1

    .prologue
    .line 749
    const/16 v0, 0x87

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadReport(I)I
    .locals 3
    .parameter "PduType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 756
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 759
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 764
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 765
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 770
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    :cond_1
    :goto_0
    return v0

    .line 775
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 780
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 785
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 790
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 793
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 801
    goto :goto_0
.end method

.method private makeRetrievePdu()I
    .locals 1

    .prologue
    .line 912
    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method

.method private makeSendReqPdu()I
    .locals 1

    .prologue
    .line 908
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected append(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 290
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write(I)V

    .line 291
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 292
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 491
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 492
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .parameter "enStr"

    .prologue
    .line 419
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 422
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 423
    .local v3, textString:[B
    if-nez v3, :cond_1

    .line 442
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 433
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 435
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 436
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 438
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 439
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 440
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 441
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 9
    .parameter "longInt"

    .prologue
    const/16 v7, 0x8

    .line 352
    move-wide v3, p1

    .line 355
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    if-ge v2, v7, :cond_0

    .line 356
    ushr-long/2addr v3, v7

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 364
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v1, v5, 0x8

    .line 366
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 367
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 368
    add-int/lit8 v1, v1, -0x8

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 321
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 546
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 547
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 529
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 530
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 531
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 532
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 309
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 310
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 334
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 407
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 385
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 386
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 389
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 391
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 11
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 459
    const-wide/16 v1, 0x7f

    .line 461
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 462
    cmp-long v5, p1, v1

    if-gez v5, :cond_1

    .line 469
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 470
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 471
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 473
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 475
    add-int/lit8 v0, v0, -0x1

    .line 476
    goto :goto_1

    .line 466
    .end local v3           #temp:J
    :cond_1
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_2
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 479
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 508
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 509
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 514
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 281
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 282
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 283
    return-void
.end method

.method protected createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1506
    const/high16 v1, 0x8

    .line 1508
    .local v1, size:I
    :try_start_0
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v4, 0x0

    const/high16 v5, 0x8

    invoke-direct {v2, p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    :goto_0
    return-object v2

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 1511
    goto :goto_0
.end method

.method protected extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .locals 6
    .parameter "mf"
    .parameter "toWriteLegnth"

    .prologue
    .line 1516
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    iget v4, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    if-lt v3, v4, :cond_1

    .line 1518
    :try_start_0
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    mul-int/lit8 v2, v3, 0x2

    .line 1520
    .local v2, newsize:I
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    if-lt v3, v2, :cond_0

    .line 1521
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    add-int/lit8 v2, v3, 0x1

    .line 1524
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V

    .line 1526
    .local v1, newMF:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 1529
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    .end local v1           #newMF:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .end local v2           #newsize:I
    :goto_0
    return-object v1

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    move-object v1, p1

    .line 1535
    goto :goto_0
.end method

.method public make()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    .line 210
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 212
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v3

    if-nez v3, :cond_0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v1

    .line 255
    .local v1, t:[B
    :try_start_0
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 256
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 258
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 263
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_3

    .line 264
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 267
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PduComposer"

    const-string v4, "Unexpected IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #t:[B
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 222
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 227
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 232
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 238
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadOrigInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 243
    :pswitch_7
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeDeliveryInd()I

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
