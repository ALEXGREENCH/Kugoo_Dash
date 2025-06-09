.class public Lcom/facebook/crypto/CryptoAlgoGcm;
.super Ljava/lang/Object;
.source "CryptoAlgoGcm.java"

# interfaces
.implements Lcom/facebook/crypto/CryptoAlgo;


# instance fields
.field private final mConfig:Lcom/facebook/crypto/CryptoConfig;

.field private final mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

.field private final mNativeLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;Lcom/facebook/crypto/keychain/KeyChain;Lcom/facebook/crypto/CryptoConfig;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mNativeLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    .line 31
    iput-object p2, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    .line 32
    iput-object p3, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    return-void
.end method

.method private computeCipherAad(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    new-array p2, v0, [B

    aput-byte p3, p2, v2

    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    .line 83
    invoke-virtual {p1, p2, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    .line 84
    array-length p2, p4

    invoke-virtual {p1, p4, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    return-void
.end method


# virtual methods
.method public getCipherMetaDataLength()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->tagLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method public wrap(Ljava/io/InputStream;Lcom/facebook/crypto/Entity;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/exception/CryptoInitializationException;,
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 57
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected crypto version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/crypto/util/Assertions;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget-byte v4, v4, Lcom/facebook/crypto/CryptoConfig;->cipherId:B

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected cipher ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/crypto/util/Assertions;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v2, v2, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    new-array v2, v2, [B

    .line 65
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 67
    new-instance v3, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v4, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mNativeLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v3, v4}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 68
    iget-object v4, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v4}, Lcom/facebook/crypto/keychain/KeyChain;->getCipherKey()[B

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->decryptInit([B[B)V

    .line 70
    invoke-virtual {p2}, Lcom/facebook/crypto/Entity;->getBytes()[B

    move-result-object p2

    .line 71
    invoke-direct {p0, v3, v0, v1, p2}, Lcom/facebook/crypto/CryptoAlgoGcm;->computeCipherAad(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V

    .line 72
    new-instance p2, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;

    iget-object v0, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->tagLength:I

    invoke-direct {p2, p1, v3, v0}, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;I)V

    return-object p2
.end method

.method public wrap(Ljava/io/OutputStream;Lcom/facebook/crypto/Entity;[B)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/crypto/exception/CryptoInitializationException;,
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-object v1, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget-byte v1, v1, Lcom/facebook/crypto/CryptoConfig;->cipherId:B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 41
    iget-object v1, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v1}, Lcom/facebook/crypto/keychain/KeyChain;->getNewIV()[B

    move-result-object v1

    .line 42
    new-instance v2, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v3, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mNativeLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v2, v3}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 43
    iget-object v3, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v3}, Lcom/facebook/crypto/keychain/KeyChain;->getCipherKey()[B

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->encryptInit([B[B)V

    .line 44
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 46
    invoke-virtual {p2}, Lcom/facebook/crypto/Entity;->getBytes()[B

    move-result-object p2

    .line 47
    iget-object v1, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget-byte v1, v1, Lcom/facebook/crypto/CryptoConfig;->cipherId:B

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/facebook/crypto/CryptoAlgoGcm;->computeCipherAad(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V

    .line 48
    new-instance p2, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;

    iget-object v0, p0, Lcom/facebook/crypto/CryptoAlgoGcm;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->tagLength:I

    invoke-direct {p2, p1, v2, p3, v0}, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;[BI)V

    return-object p2
.end method
