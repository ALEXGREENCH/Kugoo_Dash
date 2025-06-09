.class public Lcom/facebook/crypto/cipher/NativeGCMCipher;
.super Ljava/lang/Object;
.source "NativeGCMCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;
    }
.end annotation


# static fields
.field private static final CIPHER_ALREADY_INIT:Ljava/lang/String; = "Cipher has already been initialized"

.field private static final CIPHER_NOT_FINALIZED:Ljava/lang/String; = "Cipher has not been finalized"

.field private static final CIPHER_NOT_INIT:Ljava/lang/String; = "Cipher has not been initialized"

.field public static final FAILURE:Ljava/lang/String; = "Failure"


# instance fields
.field private mCtxPtr:J

.field private mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

.field private final mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 45
    iput-object p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    return-void
.end method

.method private ensureInFinalizedState()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cipher has not been finalized"

    .line 135
    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private ensureInInitalizedState()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cipher has not been initialized"

    .line 128
    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 139
    move-object v1, v0

    check-cast v1, Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private native nativeDecryptFinal([BI)I
.end method

.method private native nativeDecryptInit([B[B)I
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeEncryptFinal([BI)I
.end method

.method private native nativeEncryptInit([B[B)I
.end method

.method private static native nativeFailure()I
.end method

.method private native nativeGetCipherBlockSize()I
.end method

.method private native nativeUpdate([BII[BI)I
.end method

.method private native nativeUpdateAad([BI)I
.end method


# virtual methods
.method public decryptFinal([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cipher has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 103
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptFinal([BI)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    return-void

    .line 105
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string p2, "The message could not be decrypted successfully.It has either been tampered with or the wrong resource is being decrypted."

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decryptInit([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;,
            Lcom/facebook/crypto/exception/CryptoInitializationException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptInit([B[B)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 64
    sget-object p1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    return-void

    .line 62
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string p2, "decryptInit"

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInFinalizedState()V

    .line 113
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDestroy()I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 116
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v1, "destroy"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encryptFinal([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "Cipher has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 94
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptFinal([BI)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 96
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    new-array v0, v2, [Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "encryptFinal: %d"

    invoke-direct {p0, p2, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptInit([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;,
            Lcom/facebook/crypto/exception/CryptoInitializationException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptInit([B[B)I

    move-result p1

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 55
    sget-object p1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    return-void

    .line 53
    :cond_1
    new-instance p1, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string p2, "encryptInit"

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCipherBlockSize()I
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInInitalizedState()V

    .line 121
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeGetCipherBlockSize()I

    move-result v0

    return v0
.end method

.method public update([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInInitalizedState()V

    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdate([BII[BI)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 72
    :cond_0
    new-instance p4, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, v0

    const/4 p2, 0x1

    .line 76
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, p2

    const/4 p2, 0x2

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, p2

    const-string/jumbo p1, "update: Offset = %d; DataLen = %d; Result = %d"

    .line 73
    invoke-direct {p0, p1, p5}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public updateAad([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/cipher/NativeGCMCipherException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInInitalizedState()V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdateAad([BI)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p1, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string/jumbo p2, "updateAAd: DataLen = %d"

    invoke-direct {p0, p2, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
