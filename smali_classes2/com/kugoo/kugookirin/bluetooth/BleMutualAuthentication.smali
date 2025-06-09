.class public Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;
.super Ljava/lang/Object;
.source "BleMutualAuthentication.java"


# static fields
.field public static bleAuthentication:Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

.field public static lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;


# instance fields
.field _isCredible:Z

.field _isNeedAuth:Z

.field _isNeedRequest:Z

.field _isTrusted:Z

.field _receivedHash:Ljava/lang/String;

.field _requestTime:I

.field _sendCode:Ljava/lang/String;

.field _sendHash:Ljava/lang/String;

.field private arr:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->arr:Ljava/util/List;

    return-void
.end method

.method public static getBleAuthentication()Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;
    .locals 1

    .line 32
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->bleAuthentication:Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;-><init>()V

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->bleAuthentication:Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    .line 34
    invoke-static {}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->getInstent()Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    move-result-object v0

    sput-object v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    .line 36
    :cond_0
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->bleAuthentication:Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    return-object v0
.end method


# virtual methods
.method public final askIsNeedAuth()V
    .locals 2

    const-string v0, "sendHash--"

    const-string v1, "---requstAuth--+VER?-"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v1, "+VER?"

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    return-void
.end method

.method isMutualAuthentication()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isCredible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isTrusted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mutualAuthenticationWithString(Ljava/lang/String;I)Z
    .locals 10

    .line 114
    new-instance v0, Lcom/example/mylibrary/LDSDKEncryption;

    invoke-direct {v0}, Lcom/example/mylibrary/LDSDKEncryption;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---string---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sendHash--"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isTrusted:Z

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x6

    if-lt v1, v7, :cond_4

    const/4 v1, 0x3

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "+PM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x3e

    if-ne v1, v8, :cond_0

    .line 121
    iput-boolean v6, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isNeedRequest:Z

    .line 122
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/example/mylibrary/LDSDKEncryption;->encryptionStringOfValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendHash:Ljava/lang/String;

    .line 123
    sget-object p2, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+PM<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendHash:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    const-string v1, "+PM=OK"

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "+PM>OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "+PM=NK"

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 142
    iput-boolean v6, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isTrusted:Z

    goto/16 :goto_2

    .line 130
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isTrusted:Z

    .line 131
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const-string v1, ""

    move v2, v6

    :goto_1
    if-ge v2, v7, :cond_3

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_3
    iput-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendCode:Ljava/lang/String;

    .line 137
    sget-object p1, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+PA<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendCode:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/example/mylibrary/LDSDKEncryption;->encryptionStringOfValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_receivedHash:Ljava/lang/String;

    goto :goto_2

    .line 147
    :cond_4
    iget-boolean p2, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isCredible:Z

    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_5

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "+PA>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 149
    iget-object p2, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_receivedHash:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isCredible:Z

    goto :goto_2

    .line 150
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x8

    if-le p2, v0, :cond_6

    const/4 p2, 0x5

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "+VER="

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 152
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->requstAuth()V

    .line 154
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isCredible:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isTrusted:Z

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v6

    :goto_3
    return v4
.end method

.method public recieveResult(Ljava/lang/String;I)Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isNeedAuth:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->isMutualAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->mutualAuthenticationWithString(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method requstAuth()V
    .locals 3

    const-string v0, "---requstAuth---"

    const-string v1, "sendHash--"

    .line 105
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isNeedRequest:Z

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->lfBluetootService:Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;

    const-string v2, "+PM?"

    invoke-virtual {v0, v2}, Lcom/kugoo/kugookirin/bluetooth/LFBluetootService;->sendString(Ljava/lang/String;)V

    const-string v0, "---requstAuth--PM-"

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method reset()Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;
    .locals 2

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isCredible:Z

    .line 49
    iput-boolean v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isTrusted:Z

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendHash:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_sendCode:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_receivedHash:Ljava/lang/String;

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isNeedAuth:Z

    .line 56
    iput v0, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_requestTime:I

    .line 58
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->_isNeedRequest:Z

    .line 60
    sget-object v0, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->bleAuthentication:Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;

    return-object v0
.end method

.method startAuth()V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/bluetooth/BleMutualAuthentication;->askIsNeedAuth()V

    return-void
.end method
