.class Lcom/facebook/crypto/CheckedKeyChain;
.super Ljava/lang/Object;
.source "CheckedKeyChain.java"

# interfaces
.implements Lcom/facebook/crypto/keychain/KeyChain;


# instance fields
.field private final mConfig:Lcom/facebook/crypto/CryptoConfig;

.field private final mDelegate:Lcom/facebook/crypto/keychain/KeyChain;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/keychain/KeyChain;Lcom/facebook/crypto/CryptoConfig;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/crypto/CheckedKeyChain;->mDelegate:Lcom/facebook/crypto/keychain/KeyChain;

    .line 33
    iput-object p2, p0, Lcom/facebook/crypto/CheckedKeyChain;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    return-void
.end method

.method private checkLength([BILjava/lang/String;)V
    .locals 2

    .line 63
    array-length v0, p1

    if-ne v0, p2, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " should be "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes long but is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyKeys()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/facebook/crypto/CheckedKeyChain;->mDelegate:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v0}, Lcom/facebook/crypto/keychain/KeyChain;->destroyKeys()V

    return-void
.end method

.method public getCipherKey()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/facebook/crypto/CheckedKeyChain;->mDelegate:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v0}, Lcom/facebook/crypto/keychain/KeyChain;->getCipherKey()[B

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/facebook/crypto/CheckedKeyChain;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->keyLength:I

    const-string v2, "Key"

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/crypto/CheckedKeyChain;->checkLength([BILjava/lang/String;)V

    return-object v0
.end method

.method public getMacKey()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/facebook/crypto/CheckedKeyChain;->mDelegate:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v0}, Lcom/facebook/crypto/keychain/KeyChain;->getMacKey()[B

    move-result-object v0

    const/16 v1, 0x40

    const-string v2, "Mac"

    .line 46
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/crypto/CheckedKeyChain;->checkLength([BILjava/lang/String;)V

    return-object v0
.end method

.method public getNewIV()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/crypto/CheckedKeyChain;->mDelegate:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v0}, Lcom/facebook/crypto/keychain/KeyChain;->getNewIV()[B

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/facebook/crypto/CheckedKeyChain;->mConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    const-string v2, "IV"

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/crypto/CheckedKeyChain;->checkLength([BILjava/lang/String;)V

    return-object v0
.end method
