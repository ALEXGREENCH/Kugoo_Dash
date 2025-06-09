.class public Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;
.super Ljava/lang/Object;
.source "SharedPrefsBackedKeyChain.java"

# interfaces
.implements Lcom/facebook/crypto/keychain/KeyChain;


# static fields
.field static final CIPHER_KEY_PREF:Ljava/lang/String; = "cipher_key"

.field static final MAC_KEY_PREF:Ljava/lang/String; = "mac_key"

.field static final SHARED_PREF_NAME:Ljava/lang/String; = "crypto"


# instance fields
.field protected mCipherKey:[B

.field private final mCryptoConfig:Lcom/facebook/crypto/CryptoConfig;

.field protected mMacKey:[B

.field private final mSecureRandom:Lcom/facebook/android/crypto/keychain/FixedSecureRandom;

.field protected mSetCipherKey:Z

.field protected mSetMacKey:Z

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    sget-object v0, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    invoke-direct {p0, p1, v0}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;-><init>(Landroid/content/Context;Lcom/facebook/crypto/CryptoConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/crypto/CryptoConfig;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p2}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->prefNameForConfig(Lcom/facebook/crypto/CryptoConfig;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 66
    new-instance p1, Lcom/facebook/android/crypto/keychain/FixedSecureRandom;

    invoke-direct {p1}, Lcom/facebook/android/crypto/keychain/FixedSecureRandom;-><init>()V

    iput-object p1, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSecureRandom:Lcom/facebook/android/crypto/keychain/FixedSecureRandom;

    .line 67
    iput-object p2, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mCryptoConfig:Lcom/facebook/crypto/CryptoConfig;

    return-void
.end method

.method private generateAndSaveKey(Ljava/lang/String;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 142
    new-array p2, p2, [B

    .line 143
    iget-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSecureRandom:Lcom/facebook/android/crypto/keychain/FixedSecureRandom;

    invoke-virtual {v0, p2}, Lcom/facebook/android/crypto/keychain/FixedSecureRandom;->nextBytes([B)V

    .line 145
    iget-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    invoke-virtual {p0, p2}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->encodeForPrefs([B)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p2
.end method

.method private maybeGenerateKey(Ljava/lang/String;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->generateAndSaveKey(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->decodeFromPrefs(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private static prefNameForConfig(Lcom/facebook/crypto/CryptoConfig;)Ljava/lang/String;
    .locals 2

    .line 79
    sget-object v0, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    if-ne p0, v0, :cond_0

    const-string p0, "crypto"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crypto."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method decodeFromPrefs(Ljava/lang/String;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 160
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized destroyKeys()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 112
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSetCipherKey:Z

    .line 113
    iput-boolean v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSetMacKey:Z

    .line 114
    iget-object v1, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mCipherKey:[B

    if-eqz v1, :cond_0

    .line 115
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mMacKey:[B

    if-eqz v1, :cond_1

    .line 118
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mCipherKey:[B

    .line 121
    iput-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mMacKey:[B

    .line 122
    iget-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cipher_key"

    .line 123
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mac_key"

    .line 124
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method encodeForPrefs([B)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 170
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getCipherKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSetCipherKey:Z

    if-nez v0, :cond_0

    const-string v0, "cipher_key"

    .line 88
    iget-object v1, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mCryptoConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->keyLength:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->maybeGenerateKey(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mCipherKey:[B

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSetCipherKey:Z

    .line 91
    iget-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mCipherKey:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMacKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSetMacKey:Z

    if-nez v0, :cond_0

    const-string v0, "mac_key"

    const/16 v1, 0x40

    .line 97
    invoke-direct {p0, v0, v1}, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->maybeGenerateKey(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mMacKey:[B

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSetMacKey:Z

    .line 100
    iget-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mMacKey:[B

    return-object v0
.end method

.method public getNewIV()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/exception/KeyChainException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mCryptoConfig:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    new-array v0, v0, [B

    .line 106
    iget-object v1, p0, Lcom/facebook/android/crypto/keychain/SharedPrefsBackedKeyChain;->mSecureRandom:Lcom/facebook/android/crypto/keychain/FixedSecureRandom;

    invoke-virtual {v1, v0}, Lcom/facebook/android/crypto/keychain/FixedSecureRandom;->nextBytes([B)V

    return-object v0
.end method
