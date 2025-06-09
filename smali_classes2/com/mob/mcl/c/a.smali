.class public Lcom/mob/mcl/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/mcl/c/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/net/Socket;

.field public final b:Lcom/mob/mcl/c/d;

.field public c:Ljava/net/SocketAddress;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mob/mcl/c/c;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/mob/mcl/c/d;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    .line 33
    iput-object p2, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/d;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 35
    invoke-interface {p2, p0}, Lcom/mob/mcl/c/d;->a(Lcom/mob/mcl/c/a;)V

    .line 36
    new-instance p1, Lcom/mob/mcl/c/a$a;

    const-string p2, "mlp-worker"

    invoke-direct {p1, p0, p2}, Lcom/mob/mcl/c/a$a;-><init>(Lcom/mob/mcl/c/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mob/mcl/c/a$a;->start()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;
    .locals 5

    .line 40
    new-instance v0, Lcom/mob/mcl/c/c;

    invoke-direct {v0}, Lcom/mob/mcl/c/c;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    iget-wide v3, p1, Lcom/mob/mcl/c/e;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/mob/mcl/c/e;->a()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 47
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 50
    iget-object v0, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/d;

    invoke-interface {v0, p0, p1}, Lcom/mob/mcl/c/d;->a(Lcom/mob/mcl/c/a;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    .line 43
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method a()V
    .locals 10

    const/4 v0, 0x1

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1fa0

    new-array v4, v3, [B

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v6, v5, :cond_3

    const/4 v6, 0x0

    .line 62
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-ge v5, v3, :cond_0

    .line 64
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 65
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 67
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 68
    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    if-eq v8, v0, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-array v8, v0, [Ljava/lang/Object;

    .line 74
    check-cast v7, Ljava/nio/Buffer;

    invoke-virtual {v7, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 76
    invoke-static {v7}, Lcom/mob/mcl/c/e;->a(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v7

    .line 77
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mob/mcl/c/e;

    .line 78
    invoke-virtual {v9}, Lcom/mob/mcl/c/e;->b()I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {p0, v7}, Lcom/mob/mcl/c/a;->a(Ljava/util/List;)V

    .line 81
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 83
    array-length v7, v5

    sub-int/2addr v7, v6

    if-lez v7, :cond_0

    .line 84
    array-length v7, v5

    sub-int/2addr v7, v6

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 89
    iget-object v2, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/d;

    invoke-interface {v2, p0, v1}, Lcom/mob/mcl/c/d;->a(Lcom/mob/mcl/c/a;Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/mob/mcl/c/a;->a(Z)V

    :cond_3
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mob/mcl/c/e;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/mcl/c/e;

    .line 97
    iget-object v1, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/d;

    const/16 v2, 0x2329

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/mob/mcl/c/e;->b:I

    if-lt v1, v2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/d;

    invoke-interface {v1, p0, v0}, Lcom/mob/mcl/c/d;->a(Lcom/mob/mcl/c/a;Lcom/mob/mcl/c/e;)V

    .line 101
    :cond_1
    iget v1, v0, Lcom/mob/mcl/c/e;->b:I

    if-ge v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    iget-wide v4, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/mcl/c/c;

    invoke-virtual {v1, v0}, Lcom/mob/mcl/c/c;->a(Lcom/mob/mcl/c/e;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 120
    iget-object v0, p0, Lcom/mob/mcl/c/a;->b:Lcom/mob/mcl/c/d;

    invoke-interface {v0, p0, p1}, Lcom/mob/mcl/c/d;->a(Lcom/mob/mcl/c/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :catchall_0
    iget-object p1, p0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 124
    iget-object p1, p0, Lcom/mob/mcl/c/a;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method
