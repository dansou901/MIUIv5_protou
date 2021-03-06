.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_EXTENDED_PROTOCOL_MESSAGE:I = 0x1

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE:I = 0x4

.field public static final ENCODING_UNSPECIFIED:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 18
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    const-string v11, ""

    .line 340
    :goto_0
    return-object v11

    .line 214
    :cond_0
    const/4 v15, 0x1

    move/from16 v0, p2

    if-lt v0, v15, :cond_2

    .line 215
    aget-byte v15, p0, p1

    const/16 v16, -0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 216
    add-int/lit8 v15, p2, -0x1

    div-int/lit8 v14, v15, 0x2

    .line 217
    .local v14, ucslen:I
    const/4 v12, 0x0

    .line 220
    .local v12, ret:Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/lang/String;

    add-int/lit8 v15, p1, 0x1

    mul-int/lit8 v16, v14, 0x2

    const-string/jumbo v17, "utf-16be"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v13, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12           #ret:Ljava/lang/String;
    .local v13, ret:Ljava/lang/String;
    move-object v12, v13

    .line 226
    .end local v13           #ret:Ljava/lang/String;
    .restart local v12       #ret:Ljava/lang/String;
    :goto_1
    if-eqz v12, :cond_2

    .line 229
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    .line 230
    :goto_2
    if-lez v14, :cond_1

    add-int/lit8 v15, v14, -0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v16, 0xffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 231
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, ex:Ljava/io/UnsupportedEncodingException;
    const-string v15, "IccUtils"

    const-string v16, "implausible UnsupportedEncodingException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 233
    .end local v7           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 238
    .end local v12           #ret:Ljava/lang/String;
    .end local v14           #ucslen:I
    :cond_2
    const/4 v8, 0x0

    .line 239
    .local v8, isucs2:Z
    const/4 v3, 0x0

    .line 240
    .local v3, base:C
    const/4 v9, 0x0

    .line 242
    .local v9, len:I
    const/4 v15, 0x3

    move/from16 v0, p2

    if-lt v0, v15, :cond_6

    aget-byte v15, p0, p1

    const/16 v16, -0x7f

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 243
    add-int/lit8 v15, p1, 0x1

    aget-byte v15, p0, v15

    and-int/lit16 v9, v15, 0xff

    .line 244
    add-int/lit8 v15, p2, -0x3

    if-le v9, v15, :cond_3

    .line 245
    add-int/lit8 v9, p2, -0x3

    .line 247
    :cond_3
    add-int/lit8 v15, p1, 0x2

    aget-byte v15, p0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x7

    int-to-char v3, v15

    .line 248
    add-int/lit8 p1, p1, 0x3

    .line 249
    const/4 v8, 0x1

    .line 261
    :cond_4
    :goto_3
    if-eqz v8, :cond_a

    .line 262
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v12, ret:Ljava/lang/StringBuilder;
    :goto_4
    if-lez v9, :cond_9

    .line 267
    aget-byte v15, p0, p1

    if-gez v15, :cond_5

    .line 268
    aget-byte v15, p0, p1

    and-int/lit8 v15, v15, 0x7f

    add-int/2addr v15, v3

    int-to-char v15, v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 p1, p1, 0x1

    .line 270
    add-int/lit8 v9, v9, -0x1

    .line 275
    :cond_5
    const/4 v5, 0x0

    .line 276
    .local v5, count:I
    :goto_5
    if-ge v5, v9, :cond_8

    add-int v15, p1, v5

    aget-byte v15, p0, v15

    if-ltz v15, :cond_8

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 250
    .end local v5           #count:I
    .end local v12           #ret:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v15, 0x4

    move/from16 v0, p2

    if-lt v0, v15, :cond_4

    aget-byte v15, p0, p1

    const/16 v16, -0x7e

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 251
    add-int/lit8 v15, p1, 0x1

    aget-byte v15, p0, v15

    and-int/lit16 v9, v15, 0xff

    .line 252
    add-int/lit8 v15, p2, -0x4

    if-le v9, v15, :cond_7

    .line 253
    add-int/lit8 v9, p2, -0x4

    .line 255
    :cond_7
    add-int/lit8 v15, p1, 0x2

    aget-byte v15, p0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, p1, 0x3

    aget-byte v16, p0, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    or-int v15, v15, v16

    int-to-char v3, v15

    .line 257
    add-int/lit8 p1, p1, 0x4

    .line 258
    const/4 v8, 0x1

    goto :goto_3

    .line 279
    .restart local v5       #count:I
    .restart local v12       #ret:Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int p1, p1, v5

    .line 283
    sub-int/2addr v9, v5

    .line 284
    goto :goto_4

    .line 286
    .end local v5           #count:I
    :cond_9
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 289
    .end local v12           #ret:Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 290
    .local v10, resource:Landroid/content/res/Resources;
    const-string v6, ""

    .line 292
    .local v6, defaultCharset:Ljava/lang/String;
    const v15, 0x1040023

    :try_start_1
    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 304
    :goto_6
    const-string v15, "ro.cid"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, cid:Ljava/lang/String;
    const/4 v11, 0x0

    .line 307
    .local v11, result:Ljava/lang/String;
    const-string v15, "KT___901"

    invoke-static {v4, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "SKT__901"

    invoke-static {v4, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 308
    :cond_b
    const-string v15, "IccUtils"

    const-string v16, "Support KSC5601"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v15, "EUC-KR"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 311
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 294
    .end local v4           #cid:Ljava/lang/String;
    .end local v11           #result:Ljava/lang/String;
    :catch_1
    move-exception v15

    goto :goto_6
.end method

.method public static adnStringFieldToString([BIII)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "encodingType"

    .prologue
    .line 668
    const-string v1, ""

    .line 669
    .local v1, result:Ljava/lang/String;
    if-lez p2, :cond_0

    .line 670
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 671
    mul-int/lit8 v2, p2, 0x8

    div-int/lit8 v0, v2, 0x7

    .line 672
    .local v0, countSeptets:I
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 677
    .end local v0           #countSeptets:I
    :cond_0
    :goto_0
    return-object v1

    .line 674
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static bcdPlmnToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v6, 0x9

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 612
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    if-ne p2, v5, :cond_1

    .line 613
    const/16 v1, 0xf

    .line 614
    .local v1, endChar:I
    const/4 v0, 0x0

    .line 615
    .local v0, counter:I
    move v2, p1

    .local v2, i:I
    :goto_0
    add-int v5, p1, p2

    if-ge v2, v5, :cond_0

    .line 617
    add-int/lit8 v0, v0, 0x1

    .line 618
    aget-byte v5, p0, v2

    and-int/lit8 v4, v5, 0xf

    .line 619
    .local v4, v:I
    if-le v4, v6, :cond_2

    .line 631
    .end local v4           #v:I
    :cond_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_1

    .line 632
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    .end local v0           #counter:I
    .end local v1           #endChar:I
    .end local v2           #i:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 620
    .restart local v0       #counter:I
    .restart local v1       #endChar:I
    .restart local v2       #i:I
    .restart local v4       #v:I
    :cond_2
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 623
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 624
    if-le v4, v6, :cond_3

    .line 615
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    :cond_3
    move v1, v4

    goto :goto_1

    .line 627
    :cond_4
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 84
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 85
    .local v2, v:I
    if-le v2, v4, :cond_1

    .line 95
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 86
    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 90
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    if-gt v2, v4, :cond_0

    .line 92
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    .line 494
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 495
    const/4 v0, -0x1

    .line 497
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 391
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 407
    :goto_0
    return-object v3

    .line 393
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 395
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 398
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 400
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 404
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 407
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 6
    .parameter "bytes"
    .parameter "capitalized"

    .prologue
    .line 689
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 707
    :goto_0
    return-object v5

    .line 690
    :cond_0
    const-string v0, "0123456789abcdef"

    .line 691
    .local v0, HEX_CHARS:Ljava/lang/String;
    const-string v1, "0123456789ABCDEF"

    .line 693
    .local v1, HEX_CHARS_CAPITALIZED:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 695
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_3

    .line 698
    aget-byte v5, p0, v3

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 700
    .local v2, b:I
    if-eqz p1, :cond_1

    const-string v5, "0123456789ABCDEF"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    aget-byte v5, p0, v3

    and-int/lit8 v2, v5, 0xf

    .line 704
    if-eqz p1, :cond_2

    const-string v5, "0123456789ABCDEF"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 700
    :cond_1
    const-string v5, "0123456789abcdef"

    goto :goto_2

    .line 704
    :cond_2
    const-string v5, "0123456789abcdef"

    goto :goto_3

    .line 707
    .end local v2           #b:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 163
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 164
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 167
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 168
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 171
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x9

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 106
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 108
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 109
    .local v3, v:I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 110
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 119
    .end local v3           #v:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 114
    .restart local v3       #v:I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 115
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 116
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 589
    if-nez p0, :cond_1

    .line 590
    const/4 v4, 0x0

    .line 604
    :cond_0
    return-object v4

    .line 593
    :cond_1
    new-array v4, p2, [I

    .line 594
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 595
    .local v3, endIndex:I
    move v5, p1

    .line 596
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 597
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 599
    .local v0, alpha:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 603
    if-ge v6, v3, :cond_0

    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 141
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 142
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 145
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 146
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 149
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .parameter "c"

    .prologue
    .line 346
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 348
    :goto_0
    return v0

    .line 347
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 348
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 350
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 367
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 378
    :cond_0
    return-object v1

    .line 369
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 371
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 373
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 374
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 373
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static intToBcdByte(I)B
    .locals 2
    .parameter "n"

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, ret:B
    rem-int/lit8 v1, p0, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v0, v1

    .line 647
    rem-int/lit8 v1, p0, 0xa

    sub-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 649
    return v0
.end method

.method public static intToCdmaBcdByte(I)B
    .locals 2
    .parameter "n"

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, ret:B
    rem-int/lit8 v1, p0, 0xa

    int-to-byte v0, v1

    .line 658
    rem-int/lit8 v1, p0, 0xa

    sub-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 660
    return v0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 539
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 540
    const-string v9, "IccUtils"

    const-string v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    .line 572
    :goto_0
    return-object v2

    .line 545
    :cond_0
    const/4 v0, 0x1

    .line 546
    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    .line 561
    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .line 562
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 563
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 564
    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    .line 565
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 566
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    .line 567
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 568
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 566
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .line 548
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    .line 549
    goto :goto_1

    .line 551
    :pswitch_2
    const/4 v0, 0x3

    .line 552
    goto :goto_1

    .line 554
    :pswitch_3
    const/16 v0, 0xf

    .line 555
    goto :goto_1

    .line 557
    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 571
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .line 572
    .end local v8           #valueIndex:I
    .restart local p1
    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 577
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 578
    const-string v1, "IccUtils"

    const-string v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 583
    :cond_0
    new-array v0, p2, [I

    .line 585
    .local v0, resultArray:[I
    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 420
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    .line 421
    :cond_0
    const-string v2, ""

    .line 458
    :cond_1
    :goto_0
    return-object v2

    .line 424
    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 445
    const-string v2, ""

    .line 453
    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    .line 428
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 429
    .local v3, unusedBits:I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 430
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 431
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 435
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .line 437
    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 438
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 439
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 424
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    .line 468
    const/4 v8, 0x0

    .line 469
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 470
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 471
    .local v3, height:I
    mul-int v4, v10, v3

    .line 473
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 475
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 476
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 477
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 478
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 480
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 481
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 482
    const/4 v0, 0x7

    .line 484
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    .line 487
    :cond_0
    if-eq v6, v4, :cond_1

    .line 488
    const-string v11, "IccUtils"

    const-string v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 511
    const/4 v6, 0x0

    .line 512
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 513
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 514
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 515
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 516
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 519
    .local v1, clutOffset:I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 520
    .local v2, colorIndexArray:[I
    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    .line 521
    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 524
    :cond_0
    const/4 v5, 0x0

    .line 525
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 526
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 533
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 529
    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method
