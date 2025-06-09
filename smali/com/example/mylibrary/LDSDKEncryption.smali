.class public Lcom/example/mylibrary/LDSDKEncryption;
.super Ljava/lang/Object;
.source "LDSDKEncryption.java"


# static fields
.field static inv_str:Ljava/lang/String; = null

.field static inv_str1:Ljava/lang/String; = "693CC24984ADB890D9721BBE73BEBE15"

.field static inv_str2:Ljava/lang/String; = "76AFE16819A3A0B6FC69F5A71101754C"

.field static inv_str3:Ljava/lang/String; = "14280D58752CF5DCD17AB9CAED39B2FA"

.field static key:Ljava/lang/String; = "xgGLZT271011+@&"

.field static key_str:Ljava/lang/String; = null

.field static key_str1:Ljava/lang/String; = "09D01E69C13B8AF5B16501314ED8CE9B"

.field static key_str2:Ljava/lang/String; = "3937EAD225021B8A52D8786B736D8B6D"

.field static key_str3:Ljava/lang/String; = "AB31207F8DC7137434EDD37A888FA35D"

.field static key_tmp:[C

.field static s_box:[C


# instance fields
.field bonding_hash:[C

.field bonding_nonce:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [C

    .line 76
    fill-array-data v0, :array_0

    sput-object v0, Lcom/example/mylibrary/LDSDKEncryption;->s_box:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 99
    sput-object v0, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    return-void

    :array_0
    .array-data 2
        0x63s
        0x7cs
        0x77s
        0x7bs
        0xf2s
        0x6bs
        0x6fs
        0xc5s
        0x30s
        0x1s
        0x67s
        0x2bs
        0xfes
        0xd7s
        0xabs
        0x76s
        0xcas
        0x82s
        0xc9s
        0x7ds
        0xfas
        0x59s
        0x47s
        0xf0s
        0xads
        0xd4s
        0xa2s
        0xafs
        0x9cs
        0xa4s
        0x72s
        0xc0s
        0xb7s
        0xfds
        0x93s
        0x26s
        0x36s
        0x3fs
        0xf7s
        0xccs
        0x34s
        0xa5s
        0xe5s
        0xf1s
        0x71s
        0xd8s
        0x31s
        0x15s
        0x4s
        0xc7s
        0x23s
        0xc3s
        0x18s
        0x96s
        0x5s
        0x9as
        0x7s
        0x12s
        0x80s
        0xe2s
        0xebs
        0x27s
        0xb2s
        0x75s
        0x9s
        0x83s
        0x2cs
        0x1as
        0x1bs
        0x6es
        0x5as
        0xa0s
        0x52s
        0x3bs
        0xd6s
        0xb3s
        0x29s
        0xe3s
        0x2fs
        0x84s
        0x53s
        0xd1s
        0x0s
        0xeds
        0x20s
        0xfcs
        0xb1s
        0x5bs
        0x6as
        0xcbs
        0xbes
        0x39s
        0x4as
        0x4cs
        0x58s
        0xcfs
        0xd0s
        0xefs
        0xaas
        0xfbs
        0x43s
        0x4ds
        0x33s
        0x85s
        0x45s
        0xf9s
        0x2s
        0x7fs
        0x50s
        0x3cs
        0x9fs
        0xa8s
        0x51s
        0xa3s
        0x40s
        0x8fs
        0x92s
        0x9ds
        0x38s
        0xf5s
        0xbcs
        0xb6s
        0xdas
        0x21s
        0x10s
        0xffs
        0xf3s
        0xd2s
        0xcds
        0xcs
        0x13s
        0xecs
        0x5fs
        0x97s
        0x44s
        0x17s
        0xc4s
        0xa7s
        0x7es
        0x3ds
        0x64s
        0x5ds
        0x19s
        0x73s
        0x60s
        0x81s
        0x4fs
        0xdcs
        0x22s
        0x2as
        0x90s
        0x88s
        0x46s
        0xees
        0xb8s
        0x14s
        0xdes
        0x5es
        0xbs
        0xdbs
        0xe0s
        0x32s
        0x3as
        0xas
        0x49s
        0x6s
        0x24s
        0x5cs
        0xc2s
        0xd3s
        0xacs
        0x62s
        0x91s
        0x95s
        0xe4s
        0x79s
        0xe7s
        0xc8s
        0x37s
        0x6ds
        0x8ds
        0xd5s
        0x4es
        0xa9s
        0x6cs
        0x56s
        0xf4s
        0xeas
        0x65s
        0x7as
        0xaes
        0x8s
        0xbas
        0x78s
        0x25s
        0x2es
        0x1cs
        0xa6s
        0xb4s
        0xc6s
        0xe8s
        0xdds
        0x74s
        0x1fs
        0x4bs
        0xbds
        0x8bs
        0x8as
        0x70s
        0x3es
        0xb5s
        0x66s
        0x48s
        0x3s
        0xf6s
        0xes
        0x61s
        0x35s
        0x57s
        0xb9s
        0x86s
        0xc1s
        0x1ds
        0x9es
        0xe1s
        0xf8s
        0x98s
        0x11s
        0x69s
        0xd9s
        0x8es
        0x94s
        0x9bs
        0x1es
        0x87s
        0xe9s
        0xces
        0x55s
        0x28s
        0xdfs
        0x8cs
        0xa1s
        0x89s
        0xds
        0xbfs
        0xe6s
        0x42s
        0x68s
        0x41s
        0x99s
        0x2ds
        0xfs
        0xb0s
        0x54s
        0xbbs
        0x16s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 96
    iput-object v0, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_nonce:[C

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 97
    iput-object v0, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_hash:[C

    return-void
.end method

.method static choose_inv(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->inv_str3:Ljava/lang/String;

    sput-object p0, Lcom/example/mylibrary/LDSDKEncryption;->inv_str:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->inv_str2:Ljava/lang/String;

    sput-object p0, Lcom/example/mylibrary/LDSDKEncryption;->inv_str:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_2
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->inv_str1:Ljava/lang/String;

    sput-object p0, Lcom/example/mylibrary/LDSDKEncryption;->inv_str:Ljava/lang/String;

    .line 73
    :goto_0
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->inv_str:Ljava/lang/String;

    return-object p0
.end method

.method static choose_key(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->key_str3:Ljava/lang/String;

    sput-object p0, Lcom/example/mylibrary/LDSDKEncryption;->key_str:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_1
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->key_str2:Ljava/lang/String;

    sput-object p0, Lcom/example/mylibrary/LDSDKEncryption;->key_str:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_2
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->key_str1:Ljava/lang/String;

    sput-object p0, Lcom/example/mylibrary/LDSDKEncryption;->key_str:Ljava/lang/String;

    .line 58
    :goto_0
    sget-object p0, Lcom/example/mylibrary/LDSDKEncryption;->key_str:Ljava/lang/String;

    return-object p0
.end method

.method private hexStringToCharArr(Ljava/lang/String;[C)V
    .locals 4

    const/4 v0, 0x0

    .line 201
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 203
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static myKey()Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "MD5"

    .line 19
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    sget-object v1, Lcom/example/mylibrary/LDSDKEncryption;->key:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v0, v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 28
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "%02x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static string2Char(Ljava/lang/String;)[C
    .locals 5

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 130
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v4, v3, 0x2

    .line 131
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


# virtual methods
.method bonding_hash_generate(I)V
    .locals 9

    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 142
    iget-object v1, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_nonce:[C

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v1, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_nonce:[C

    invoke-static {v1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v1, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_nonce:[C

    const/16 v3, 0xc

    const/4 v4, 0x4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xf

    const/4 v3, 0x1

    const/16 v5, 0x10

    .line 145
    invoke-static {v0, v3, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x1f

    aget-char v6, v0, v2

    aput-char v6, v0, v1

    .line 148
    invoke-virtual {p0, p1}, Lcom/example/mylibrary/LDSDKEncryption;->bonding_key_generate(I)V

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    .line 150
    aget-char v6, v0, v1

    sget-object v7, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    aget-char v7, v7, v1

    xor-int/2addr v6, v7

    invoke-static {p1}, Lcom/example/mylibrary/LDSDKEncryption;->choose_inv(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/example/mylibrary/LDSDKEncryption;->string2Char(Ljava/lang/String;)[C

    move-result-object v7

    aget-char v7, v7, v1

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v1

    add-int/lit8 v6, v1, 0x10

    .line 151
    aget-char v7, v0, v6

    sget-object v8, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    aget-char v8, v8, v1

    xor-int/2addr v7, v8

    invoke-static {p1}, Lcom/example/mylibrary/LDSDKEncryption;->choose_inv(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/example/mylibrary/LDSDKEncryption;->string2Char(Ljava/lang/String;)[C

    move-result-object v8

    aget-char v8, v8, v1

    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v0, v6

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v5, :cond_1

    .line 154
    aget-char p1, v0, v3

    add-int/lit8 v1, v3, -0x1

    aget-char v1, v0, v1

    xor-int/2addr p1, v1

    int-to-char p1, p1

    aput-char p1, v0, v3

    add-int/lit8 p1, v3, 0x10

    .line 155
    aget-char v1, v0, p1

    add-int/lit8 v6, p1, -0x1

    aget-char v6, v0, v6

    xor-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v1, v0, p1

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, v4, :cond_2

    .line 158
    iget-object p1, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_hash:[C

    add-int/lit8 v1, v2, 0x0

    aget-char v1, v0, v1

    add-int/lit8 v3, v2, 0x4

    aget-char v3, v0, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x8

    aget-char v3, v0, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v2, 0xc

    aget-char v3, v0, v3

    add-int/lit8 v5, v2, 0x10

    aget-char v5, v0, v5

    add-int/2addr v3, v5

    xor-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x14

    aget-char v3, v0, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x18

    aget-char v3, v0, v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1c

    aget-char v3, v0, v3

    xor-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method bonding_key_generate(I)V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 114
    invoke-static {p1}, Lcom/example/mylibrary/LDSDKEncryption;->choose_key(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/example/mylibrary/LDSDKEncryption;->string2Char(Ljava/lang/String;)[C

    move-result-object p1

    sget-object v2, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    sget-object p1, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    invoke-virtual {p0, p1, v4}, Lcom/example/mylibrary/LDSDKEncryption;->sub_bytes([CI)V

    .line 118
    sget-object p1, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v3

    :goto_0
    const/16 v2, 0xc

    if-ge p1, v2, :cond_0

    .line 120
    sget-object v2, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    add-int/lit8 v4, p1, 0x4

    aget-char v4, v2, v4

    aput-char v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    goto :goto_0

    .line 122
    :cond_0
    sget-object p1, Lcom/example/mylibrary/LDSDKEncryption;->key_tmp:[C

    invoke-static {v1, v3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public encryptionStringOfValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 177
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 179
    iget-object v3, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_nonce:[C

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0, p2}, Lcom/example/mylibrary/LDSDKEncryption;->bonding_hash_generate(I)V

    const-string p1, ""

    :goto_1
    const/4 p2, 0x4

    if-ge v0, p2, :cond_2

    .line 187
    iget-object p2, p0, Lcom/example/mylibrary/LDSDKEncryption;->bonding_hash:[C

    aget-char p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 188
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method sub_bytes([CI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 105
    sget-object v1, Lcom/example/mylibrary/LDSDKEncryption;->s_box:[C

    aget-char v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
