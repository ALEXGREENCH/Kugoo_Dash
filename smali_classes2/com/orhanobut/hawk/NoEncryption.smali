.class public Lcom/orhanobut/hawk/NoEncryption;
.super Ljava/lang/Object;
.source "NoEncryption.java"

# interfaces
.implements Lcom/orhanobut/hawk/Encryption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method decodeBase64(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/orhanobut/hawk/NoEncryption;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method encodeBase64([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/orhanobut/hawk/NoEncryption;->encodeBase64([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
