.class Lcom/mob/tools/network/NetCommunicator$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/network/HttpResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/network/NetCommunicator;->a([B[Ljava/lang/String;Z)Lcom/mob/tools/network/HttpResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:Lcom/mob/tools/network/NetCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/tools/network/NetCommunicator;Z[Ljava/lang/String;[B)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/mob/tools/network/NetCommunicator$2;->d:Lcom/mob/tools/network/NetCommunicator;

    iput-boolean p2, p0, Lcom/mob/tools/network/NetCommunicator$2;->a:Z

    iput-object p3, p0, Lcom/mob/tools/network/NetCommunicator$2;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/tools/network/NetCommunicator$2;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/network/HttpConnection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v0, v3, :cond_0

    .line 309
    :try_start_0
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/mob/tools/network/HttpConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 310
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x400

    :try_start_2
    new-array v5, v5, [B

    .line 312
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    :goto_1
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 314
    invoke-virtual {v7, v5, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 315
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "utf-8"

    if-ne v0, v3, :cond_4

    .line 324
    :try_start_3
    iget-boolean v3, p0, Lcom/mob/tools/network/NetCommunicator$2;->a:Z

    if-eqz v3, :cond_3

    .line 325
    iget-object v3, p0, Lcom/mob/tools/network/NetCommunicator$2;->d:Lcom/mob/tools/network/NetCommunicator;

    invoke-static {v3, p1}, Lcom/mob/tools/network/NetCommunicator;->a(Lcom/mob/tools/network/NetCommunicator;Lcom/mob/tools/network/HttpConnection;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long p1, v8, v10

    if-eqz p1, :cond_2

    .line 326
    array-length p1, v5

    int-to-long v10, p1

    cmp-long p1, v8, v10

    if-nez p1, :cond_2

    .line 333
    iget-object p1, p0, Lcom/mob/tools/network/NetCommunicator$2;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcom/mob/tools/network/NetCommunicator$2;->d:Lcom/mob/tools/network/NetCommunicator;

    iget-object v3, p0, Lcom/mob/tools/network/NetCommunicator$2;->c:[B

    invoke-static {v0, v3, v5}, Lcom/mob/tools/network/NetCommunicator;->a(Lcom/mob/tools/network/NetCommunicator;[B[B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    goto :goto_2

    .line 327
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "010ghhi5dk*hchBcfeh"

    .line 328
    invoke-static {v3}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "006%ehKhchMcfeh"

    .line 329
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "005eOcicicjci"

    .line 330
    invoke-static {v0}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Illegal content length"

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/mob/tools/network/NetCommunicator$NetworkError;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_3
    iget-object p1, p0, Lcom/mob/tools/network/NetCommunicator$2;->b:[Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v0, p1, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v7, p1, v4

    aput-object v6, p1, v1

    .line 338
    invoke-static {p1}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    return-void

    .line 320
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v3, "010ghhi@dkChchJcfeh"

    .line 321
    invoke-static {v3}, Lcom/mob/commons/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v0, Lcom/mob/tools/network/NetCommunicator$NetworkError;

    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mob/tools/network/NetCommunicator$NetworkError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    move-object v5, v7

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v6, v5

    :goto_3
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v5, v0, v4

    aput-object v6, v0, v1

    .line 338
    invoke-static {v0}, Lcom/mob/commons/v;->a([Ljava/io/Closeable;)V

    .line 339
    throw p1
.end method
