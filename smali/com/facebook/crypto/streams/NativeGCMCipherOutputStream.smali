.class public Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;
.super Ljava/io/OutputStream;
.source "NativeGCMCipherOutputStream.java"


# static fields
.field private static final DEFAULT_ENCRYPT_BUFFER_SIZE:I = 0x100


# instance fields
.field private final mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

.field private final mCipherDelegate:Ljava/io/OutputStream;

.field private final mTag:[B

.field private mTagAppended:Z

.field private final mUpdateBuffer:[B

.field private final mUpdateBufferChunkSize:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;[BI)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTagAppended:Z

    .line 46
    iput-object p1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    .line 47
    iput-object p2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 48
    new-array p1, p4, [B

    iput-object p1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTag:[B

    .line 51
    invoke-virtual {p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->getCipherBlockSize()I

    move-result p1

    if-nez p3, :cond_0

    add-int/lit16 p2, p1, 0x100

    .line 53
    new-array p3, p2, [B

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 56
    array-length p4, p3

    if-lt p4, p2, :cond_1

    .line 61
    :goto_0
    array-length p2, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBufferChunkSize:I

    .line 62
    iput-object p3, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    return-void

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "encryptBuffer cannot be smaller than "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "B"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private appendTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTagAppended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTagAppended:Z

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTag:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->encryptFinal([BI)V

    .line 81
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTag:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->appendTag()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 123
    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    .line 104
    iget v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBufferChunkSize:I

    div-int v1, p3, v0

    .line 105
    rem-int v5, p3, v0

    const/4 p3, 0x0

    move v4, p2

    move p2, p3

    :goto_0
    if-ge p2, v1, :cond_0

    .line 108
    iget-object v6, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget v9, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBufferChunkSize:I

    iget-object v10, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    const/4 v11, 0x0

    move-object v7, p1

    move v8, v4

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->update([BII[BI)I

    move-result v0

    .line 109
    iget-object v2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    invoke-virtual {v2, v3, p3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 110
    iget v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBufferChunkSize:I

    add-int/2addr v4, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-lez v5, :cond_1

    .line 114
    iget-object v2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v6, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->update([BII[BI)I

    move-result p1

    .line 115
    iget-object p2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    invoke-virtual {p2, v0, p3, p1}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    return-void

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method
