.class public Lcom/kugoo/kugookirin/bluetooth/BytesUtils;
.super Ljava/lang/Object;
.source "BytesUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BytesToString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 155
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->BytesToString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static BytesToString([BII)Ljava/lang/String;
    .locals 2

    .line 162
    array-length v0, p0

    const-string v1, ""

    if-ge v0, p2, :cond_0

    .line 163
    array-length p2, p0

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hex2char(B)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    invoke-static {v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->hex2char(B)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static StringToBytes(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->StringToBytes(Ljava/lang/String;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static StringToBytes(Ljava/lang/String;II)[B
    .locals 6

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, p2, :cond_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    :cond_0
    :goto_0
    if-lt p2, p1, :cond_2

    if-ne p2, p1, :cond_1

    new-array v3, v0, [B

    .line 188
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->char2hex(C)B

    move-result v4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 189
    invoke-static {v3, v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[B)[B

    move-result-object v2

    goto :goto_1

    :cond_1
    new-array v3, v0, [B

    .line 191
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->char2hex(C)B

    move-result v4

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->char2hex(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, -0x10

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 192
    invoke-static {v3, v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[B)[B

    move-result-object v2

    :goto_1
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static addPadding([B)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 206
    :cond_0
    array-length v1, p0

    :goto_0
    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    new-array v1, v3, [B

    aput-byte v0, v1, v0

    .line 208
    invoke-static {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v4, 0x16

    if-ne v1, v4, :cond_2

    new-array v1, v3, [B

    const/4 v2, 0x2

    aput-byte v2, v1, v0

    .line 210
    invoke-static {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[B)[B

    move-result-object p0

    return-object p0

    :cond_2
    sub-int/2addr v2, v1

    .line 212
    new-array v1, v2, [B

    .line 213
    aput-byte v3, v1, v0

    sub-int/2addr v2, v3

    .line 214
    aput-byte v3, v1, v2

    .line 215
    invoke-static {v1, p0}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static addZeroForString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 544
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static appendToByteArray([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 90
    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 91
    :goto_0
    invoke-static {p0, p1, v0, v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static appendToByteArray([B[BII)[B
    .locals 4

    if-eqz p1, :cond_4

    .line 108
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 113
    array-length v1, p0

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-ltz p3, :cond_3

    if-ltz p2, :cond_3

    .line 115
    array-length v2, p1

    add-int v3, p3, p2

    if-lt v2, v3, :cond_3

    add-int v2, v1, p3

    .line 117
    new-array v2, v2, [B

    if-lez v1, :cond_2

    .line 119
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :cond_2
    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 116
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static arrayCompare([B[B)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 464
    :cond_1
    array-length v2, p0

    .line 465
    array-length v3, p1

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    .line 469
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static blockVectorToData(Ljava/util/Vector;)[B
    .locals 1

    const/4 v0, 0x1

    .line 338
    invoke-static {p0, v0}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->blockVectorToData(Ljava/util/Vector;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static blockVectorToData(Ljava/util/Vector;Z)[B
    .locals 5

    if-eqz p0, :cond_2

    .line 350
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 353
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 354
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz p1, :cond_0

    .line 356
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v4, v3}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->subByteArray([BII)[B

    move-result-object v2

    .line 357
    :cond_0
    invoke-static {v1, v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[B)[B

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 351
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid block vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byte2char(B)C
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    int-to-char p0, p0

    return p0

    :cond_0
    const/16 p0, 0x2a

    return p0
.end method

.method public static byteArrayToInt([BI)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    add-int v3, v0, p1

    .line 508
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "[null]"

    return-object p0

    .line 73
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[empty]"

    return-object p0

    :cond_1
    const-string v0, ""

    const/4 v1, 0x0

    .line 76
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->byteToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static byteToString(I)Ljava/lang/String;
    .locals 2

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 149
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static char2String([C)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 531
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-char v2, p0, v1

    invoke-static {v2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->byteToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static char2hex(C)B
    .locals 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, -0x57

    :goto_0
    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x37

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static dataToBlockVector([BI)Ljava/util/Vector;
    .locals 1

    const/4 v0, 0x1

    .line 258
    invoke-static {p0, p1, v0, v0}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->dataToBlockVector([BIZZ)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public static dataToBlockVector([BIZZ)Ljava/util/Vector;
    .locals 8

    .line 280
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    .line 282
    :cond_0
    array-length v2, p0

    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    new-array p0, v3, [B

    aput-byte v1, p0, v1

    .line 285
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    if-nez v2, :cond_2

    new-array p0, v1, [B

    .line 290
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const/4 v4, 0x2

    if-ge p1, v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    and-int/2addr v4, p2

    if-nez v4, :cond_b

    if-lt p1, v3, :cond_a

    move v4, v1

    :goto_2
    if-lez v2, :cond_8

    if-eqz p2, :cond_5

    if-lt v2, p1, :cond_4

    move v5, p1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v2, 0x1

    :goto_3
    add-int/lit8 v6, v5, -0x1

    goto :goto_5

    :cond_5
    if-lt v2, p1, :cond_6

    move v5, p1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    move v6, v5

    .line 309
    :goto_5
    new-array v7, v5, [B

    sub-int/2addr v5, v6

    .line 310
    invoke-static {p0, v4, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    sub-int/2addr v2, v6

    if-eqz p2, :cond_7

    .line 315
    aput-byte v3, v7, v1

    .line 317
    :cond_7
    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    .line 320
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    aput-byte v1, p0, v1

    if-eqz p3, :cond_9

    move p0, v1

    .line 322
    :goto_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge p0, p1, :cond_9

    .line 323
    invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 324
    invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    aget-byte p2, p2, v1

    rem-int/lit8 p3, p0, 0x2

    shl-int/2addr p3, v3

    or-int/2addr p2, p3

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_9
    return-object v0

    .line 297
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "block size should be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 294
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "block size should be >= 2 when using the chaining indicator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBlockNumber([B)I
    .locals 2

    if-eqz p0, :cond_2

    .line 370
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 372
    aget-byte p0, p0, v0

    const/4 v1, 0x2

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static hex2char(B)C
    .locals 1

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_0
    const/16 v0, 0xf

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x37

    goto :goto_0

    :cond_1
    int-to-char p0, p0

    return p0
.end method

.method public static hexString2binaryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_2

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    .line 23
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    .line 22
    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isChained([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 385
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    aget-byte p0, p0, v0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDummyBlock([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 438
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    aget-byte p0, p0, v0

    const/16 v1, 0x88

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isEmptyBlock([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 411
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    aget-byte p0, p0, v0

    const/16 v1, 0x8

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isEndBlock([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 398
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    aget-byte p0, p0, v0

    const/4 v1, 0x4

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isExpectedBlock(BB)Z
    .locals 3

    const/4 v0, 0x2

    and-int/2addr p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isNullBlock([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 426
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static removePadding([B)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 226
    :cond_0
    array-length v1, p0

    .line 227
    :goto_0
    aget-byte v0, p0, v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v2

    .line 231
    :goto_1
    aget-byte v3, p0, v0

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    .line 233
    invoke-static {p0, v3, v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->subByteArray([BII)[B

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    sub-int/2addr v1, v2

    .line 228
    invoke-static {p0, v2, v1}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->subByteArray([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static string2Char(Ljava/lang/String;)[C
    .locals 5

    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 519
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v4, v3, 0x2

    .line 520
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static subByteArray([BII)[B
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-static {v0, p0, p1, p2}, Lcom/kugoo/kugookirin/bluetooth/BytesUtils;->appendToByteArray([B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static xor([Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 560
    aget-object v1, p0, v0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    .line 561
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_4

    .line 563
    aget-object v4, p0, v3

    invoke-static {v4, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "0"

    const/16 v7, 0x8

    if-eq v5, v7, :cond_0

    .line 566
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    if-ge v5, v7, :cond_0

    .line 567
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 570
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 571
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    :goto_2
    if-ge v5, v7, :cond_1

    .line 572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, ""

    move v7, v0

    .line 575
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 577
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_2

    .line 578
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 580
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-object v1, v5

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x2

    .line 586
    invoke-static {v1, p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
