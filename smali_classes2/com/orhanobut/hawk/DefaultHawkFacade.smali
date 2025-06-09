.class public Lcom/orhanobut/hawk/DefaultHawkFacade;
.super Ljava/lang/Object;
.source "DefaultHawkFacade.java"

# interfaces
.implements Lcom/orhanobut/hawk/HawkFacade;


# instance fields
.field private final converter:Lcom/orhanobut/hawk/Converter;

.field private final encryption:Lcom/orhanobut/hawk/Encryption;

.field private final logInterceptor:Lcom/orhanobut/hawk/LogInterceptor;

.field private final serializer:Lcom/orhanobut/hawk/Serializer;

.field private final storage:Lcom/orhanobut/hawk/Storage;


# direct methods
.method public constructor <init>(Lcom/orhanobut/hawk/HawkBuilder;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/orhanobut/hawk/HawkBuilder;->getEncryption()Lcom/orhanobut/hawk/Encryption;

    move-result-object v0

    iput-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->encryption:Lcom/orhanobut/hawk/Encryption;

    .line 13
    invoke-virtual {p1}, Lcom/orhanobut/hawk/HawkBuilder;->getStorage()Lcom/orhanobut/hawk/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->storage:Lcom/orhanobut/hawk/Storage;

    .line 14
    invoke-virtual {p1}, Lcom/orhanobut/hawk/HawkBuilder;->getConverter()Lcom/orhanobut/hawk/Converter;

    move-result-object v1

    iput-object v1, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->converter:Lcom/orhanobut/hawk/Converter;

    .line 15
    invoke-virtual {p1}, Lcom/orhanobut/hawk/HawkBuilder;->getSerializer()Lcom/orhanobut/hawk/Serializer;

    move-result-object v1

    iput-object v1, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->serializer:Lcom/orhanobut/hawk/Serializer;

    .line 16
    invoke-virtual {p1}, Lcom/orhanobut/hawk/HawkBuilder;->getLogInterceptor()Lcom/orhanobut/hawk/LogInterceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->logInterceptor:Lcom/orhanobut/hawk/LogInterceptor;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hawk.init -> Encryption : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/orhanobut/hawk/LogInterceptor;->onLog(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->logInterceptor:Lcom/orhanobut/hawk/LogInterceptor;

    invoke-interface {v0, p1}, Lcom/orhanobut/hawk/LogInterceptor;->onLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->storage:Lcom/orhanobut/hawk/Storage;

    invoke-interface {v0, p1}, Lcom/orhanobut/hawk/Storage;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public count()J
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->storage:Lcom/orhanobut/hawk/Storage;

    invoke-interface {v0}, Lcom/orhanobut/hawk/Storage;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->storage:Lcom/orhanobut/hawk/Storage;

    invoke-interface {v0, p1}, Lcom/orhanobut/hawk/Storage;->delete(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteAll()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->storage:Lcom/orhanobut/hawk/Storage;

    invoke-interface {v0}, Lcom/orhanobut/hawk/Storage;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Hawk.get -> Converted to : "

    const-string v1, "Hawk.get -> Decrypted to : "

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hawk.get -> key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Hawk.get -> null key, returning null value "

    .line 74
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return-object v2

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->storage:Lcom/orhanobut/hawk/Storage;

    invoke-interface {v3, p1}, Lcom/orhanobut/hawk/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hawk.get -> Fetched from storage : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const-string p1, "Hawk.get -> Fetching from storage failed"

    .line 82
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return-object v2

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->serializer:Lcom/orhanobut/hawk/Serializer;

    invoke-interface {v4, v3}, Lcom/orhanobut/hawk/Serializer;->deserialize(Ljava/lang/String;)Lcom/orhanobut/hawk/DataInfo;

    move-result-object v3

    const-string v4, "Hawk.get -> Deserialized"

    .line 88
    invoke-direct {p0, v4}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    if-nez v3, :cond_2

    const-string p1, "Hawk.get -> Deserialization failed"

    .line 90
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return-object v2

    .line 97
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->encryption:Lcom/orhanobut/hawk/Encryption;

    iget-object v5, v3, Lcom/orhanobut/hawk/DataInfo;->cipherText:Ljava/lang/String;

    invoke-interface {v4, p1, v5}, Lcom/orhanobut/hawk/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v2

    .line 100
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hawk.get -> Decrypt failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "Hawk.get -> Decrypt failed"

    .line 103
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return-object v2

    .line 110
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->converter:Lcom/orhanobut/hawk/Converter;

    invoke-interface {v1, p1, v3}, Lcom/orhanobut/hawk/Converter;->fromString(Ljava/lang/String;Lcom/orhanobut/hawk/DataInfo;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string p1, "Hawk.get -> Converter failed"

    .line 113
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public isBuilt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    const-string v0, "Hawk.put -> Encrypted to  "

    const-string v1, "Key"

    .line 23
    invoke-static {v1, p1}, Lcom/orhanobut/hawk/HawkUtils;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hawk.put -> key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, "Hawk.put -> Value is null. Any existing value will be deleted with the given key"

    .line 28
    invoke-direct {p0, p2}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->delete(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->converter:Lcom/orhanobut/hawk/Converter;

    invoke-interface {v1, p2}, Lcom/orhanobut/hawk/Converter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hawk.put -> Converted to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p1, "Hawk.put -> Converter failed"

    .line 36
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v3, 0x0

    .line 43
    :try_start_0
    iget-object v4, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->encryption:Lcom/orhanobut/hawk/Encryption;

    invoke-interface {v4, p1, v1}, Lcom/orhanobut/hawk/Encryption;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v3, :cond_2

    const-string p1, "Hawk.put -> Encryption failed"

    .line 49
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return v2

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->serializer:Lcom/orhanobut/hawk/Serializer;

    invoke-interface {v0, v3, p2}, Lcom/orhanobut/hawk/Serializer;->serialize(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hawk.put -> Serialized to"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    if-nez p2, :cond_3

    const-string p1, "Hawk.put -> Serialization failed"

    .line 57
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return v2

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/orhanobut/hawk/DefaultHawkFacade;->storage:Lcom/orhanobut/hawk/Storage;

    invoke-interface {v0, p1, p2}, Lcom/orhanobut/hawk/Storage;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Hawk.put -> Stored successfully"

    .line 63
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    const-string p1, "Hawk.put -> Store operation failed"

    .line 66
    invoke-direct {p0, p1}, Lcom/orhanobut/hawk/DefaultHawkFacade;->log(Ljava/lang/String;)V

    return v2
.end method
