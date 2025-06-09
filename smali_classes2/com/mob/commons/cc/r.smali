.class public Lcom/mob/commons/cc/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .locals 3

    .line 26
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 29
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([BI)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 192
    array-length v0, p1

    add-int/lit8 v1, p2, -0x1

    if-gt v0, v1, :cond_0

    .line 195
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 196
    aput-byte v2, v0, v1

    .line 197
    array-length v3, p1

    shr-int/lit8 v4, v3, 0x18

    int-to-byte v4, v4

    .line 198
    aput-byte v4, v0, v2

    shr-int/lit8 v2, v3, 0x10

    int-to-byte v2, v2

    const/4 v4, 0x2

    .line 199
    aput-byte v2, v0, v4

    shr-int/lit8 v2, v3, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x3

    .line 200
    aput-byte v2, v0, v4

    const/4 v2, 0x4

    int-to-byte v4, v3

    .line 201
    aput-byte v4, v0, v2

    sub-int/2addr p2, v3

    .line 202
    invoke-static {p1, v1, v0, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "Message too large"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    array-length v0, p1

    if-ne v0, p3, :cond_0

    if-eqz p2, :cond_1

    .line 176
    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 177
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 180
    :cond_1
    invoke-direct {p0, p1, p6}, Lcom/mob/commons/cc/r;->a([BI)[B

    move-result-object p1

    .line 181
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 182
    invoke-virtual {p2, p5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_2

    .line 187
    invoke-virtual {p2, p4, p5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 183
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "the message must be smaller than the modulue"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    const-string v2, "003Yjehnjk"

    .line 60
    invoke-static {v2}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 61
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    .line 63
    invoke-virtual {v2, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 64
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    invoke-virtual {p0, v0}, Lcom/mob/commons/cc/r;->b([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 40
    :cond_0
    array-length v1, p1

    .line 43
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/mob/commons/cc/r;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :catchall_0
    return-object v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 89
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 96
    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public a(Lcom/mob/commons/cc/r;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/r;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/r;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    const-string p2, "bm5"

    .line 208
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    if-ne p2, p5, :cond_0

    .line 209
    aget-object p2, p4, v0

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/r;->a([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_0
    const-string p2, "sm5"

    .line 211
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 212
    aget-object p2, p4, v0

    check-cast p2, Ljava/io/InputStream;

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/r;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_1
    const-string p2, "thx"

    .line 214
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 215
    aget-object p2, p4, v0

    check-cast p2, [B

    invoke-virtual {p1, p2}, Lcom/mob/commons/cc/r;->b([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_2
    const-string p2, "fnil"

    .line 217
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz p2, :cond_3

    array-length p2, p4

    if-ne p2, v2, :cond_3

    .line 218
    aget-object p2, p4, v0

    check-cast p2, Ljava/util/ArrayList;

    aget-object p3, p4, p5

    check-cast p3, Ljava/util/ArrayList;

    aget-object p4, p4, v1

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Lcom/mob/commons/cc/r;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    aput-object p1, p6, v0

    return p5

    :cond_3
    const-string p1, "aesen"

    .line 220
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_4

    array-length p1, p4

    if-ne p1, v3, :cond_4

    .line 222
    :try_start_0
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, [B

    aget-object p4, p4, v2

    check-cast p4, [B

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/r;->a(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 224
    aput-object p2, p6, v0

    .line 225
    aput-object p1, p7, v0

    :goto_0
    return p5

    :cond_4
    const-string p1, "005fhNhkfeVh"

    .line 228
    invoke-static {p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    array-length p1, p4

    if-ne p1, v3, :cond_5

    .line 230
    :try_start_1
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, [B

    aget-object p4, p4, v2

    check-cast p4, [B

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/r;->b(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 232
    aput-object p2, p6, v0

    .line 233
    aput-object p1, p7, v0

    :goto_1
    return p5

    :cond_5
    const-string p1, "006fhLhkfehi(l"

    .line 236
    invoke-static {p1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    array-length p1, p4

    if-ne p1, v3, :cond_6

    .line 238
    :try_start_2
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/String;

    aget-object p3, p4, p5

    check-cast p3, Ljava/lang/String;

    aget-object v1, p4, v1

    check-cast v1, [B

    aget-object p4, p4, v2

    check-cast p4, [B

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/r;->c(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 240
    aput-object p2, p6, v0

    .line 241
    aput-object p1, p7, v0

    :goto_2
    return p5

    :cond_6
    const-string p1, "enc"

    .line 244
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    array-length p1, p4

    if-ne p1, v3, :cond_7

    .line 246
    :try_start_3
    aget-object p1, p4, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p3, p4, p5

    check-cast p3, [B

    aget-object v1, p4, v1

    check-cast v1, Ljava/math/BigInteger;

    aget-object p4, p4, v2

    check-cast p4, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/mob/commons/cc/r;->a(I[BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object p1

    aput-object p1, p6, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 248
    aput-object p2, p6, v0

    .line 249
    aput-object p1, p7, v0

    :goto_3
    return p5

    :cond_7
    const-string p1, "d"

    .line 252
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 253
    array-length p1, p4

    const-string p2, "%s"

    if-ne p1, p5, :cond_8

    aget-object p1, p4, v0

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 254
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p3, p5, [Ljava/lang/Object;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string p7, "[sasa] "

    invoke-direct {p6, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p4, p4, v0

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    goto :goto_4

    .line 255
    :cond_8
    array-length p1, p4

    if-ne p1, p5, :cond_9

    aget-object p1, p4, v0

    instance-of p1, p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_9

    .line 256
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    aget-object p3, p4, v0

    check-cast p3, Ljava/lang/Throwable;

    new-array p4, p5, [Ljava/lang/Object;

    const-string p6, "[sasa]"

    aput-object p6, p4, v0

    invoke-virtual {p1, p3, p2, p4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_9
    :goto_4
    return p5

    :cond_a
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 23
    check-cast p1, Lcom/mob/commons/cc/r;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/r;->a(Lcom/mob/commons/cc/r;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public a(I[BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 152
    div-int/lit8 v8, p1, 0x8

    add-int/lit8 v9, v8, -0xb

    .line 155
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 158
    :try_start_0
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v14, v12

    .line 159
    :goto_0
    :try_start_1
    array-length v1, v0

    if-le v1, v14, :cond_0

    .line 160
    array-length v1, v0

    sub-int/2addr v1, v14

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v14

    move v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v7, v8

    .line 161
    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/cc/r;->a([BIILjava/math/BigInteger;Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 162
    array-length v2, v1

    invoke-virtual {v13, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->write([B)V

    add-int/2addr v14, v15

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v1, v11, [Ljava/io/Closeable;

    aput-object v13, v1, v12

    .line 168
    invoke-static {v1}, Lcom/mob/commons/cc/r;->a([Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v13

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    new-array v2, v11, [Ljava/io/Closeable;

    aput-object v1, v2, v12

    invoke-static {v2}, Lcom/mob/commons/cc/r;->a([Ljava/io/Closeable;)V

    .line 169
    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 114
    array-length v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "003Bhfikgn"

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 116
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x1

    .line 117
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 118
    array-length p2, p4

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    new-array p2, p2, [B

    const/4 v4, 0x0

    .line 119
    array-length v5, p4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p3

    .line 120
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b([B)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    array-length v0, p1

    .line 78
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 80
    aget-byte v5, p1, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 129
    array-length v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "003Whfikgn"

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 132
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 133
    array-length p2, p4

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    new-array p2, p2, [B

    const/4 v4, 0x0

    .line 134
    array-length v5, p4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p3

    .line 135
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BI)I

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 144
    array-length v2, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "003(hfikgn"

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 146
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 p2, 0x2

    .line 147
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 148
    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
