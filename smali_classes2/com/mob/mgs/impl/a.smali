.class public Lcom/mob/mgs/impl/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/mgs/impl/a;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/net/Socket;

.field private h:I

.field private i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/mob/mgs/impl/a;

    invoke-direct {v0}, Lcom/mob/mgs/impl/a;-><init>()V

    sput-object v0, Lcom/mob/mgs/impl/a;->a:Lcom/mob/mgs/impl/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mgs/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mgs/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mgs/impl/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/mob/mgs/impl/a;->g:Ljava/net/Socket;

    const/4 v0, 0x5

    .line 44
    iput v0, p0, Lcom/mob/mgs/impl/a;->h:I

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/mob/mgs/impl/a;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/mob/mgs/impl/a;->h:I

    return p1
.end method

.method public static a()Lcom/mob/mgs/impl/a;
    .locals 1

    .line 49
    sget-object v0, Lcom/mob/mgs/impl/a;->a:Lcom/mob/mgs/impl/a;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/a;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mob/mgs/impl/a;->g:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/mgs/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mob/mgs/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/a;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mob/mgs/impl/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mob/mgs/impl/a;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mob/mgs/impl/a;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 174
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 295
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[GdCon] onServerDisconnect maxRegisterClientFailedCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mob/mgs/impl/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isConnectException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/mob/mgs/impl/a;->f()V

    .line 300
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mgs/impl/a$3;

    invoke-direct {v1, p0, p1}, Lcom/mob/mgs/impl/a$3;-><init>(Lcom/mob/mgs/impl/a;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/nio/channels/SelectionKey;)Z
    .locals 2

    .line 208
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/SocketChannel;

    const-string v0, "chk"

    const-string v1, "utf-8"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 215
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/mob/mgs/impl/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mob/mgs/impl/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 163
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 164
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 166
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mob/mgs/impl/a;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/mob/mgs/impl/a;->c()V

    return-void
.end method

.method static synthetic d(Lcom/mob/mgs/impl/a;)Ljava/net/Socket;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mob/mgs/impl/a;->g:Ljava/net/Socket;

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/mob/mgs/impl/a;->e()Z

    .line 339
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/mob/mgs/impl/a$4;

    invoke-direct {v1, p0}, Lcom/mob/mgs/impl/a$4;-><init>(Lcom/mob/mgs/impl/a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xf0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mgs/impl/a;->j:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 356
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    const-string v2, "[GdCon] HB timer error"

    invoke-virtual {v1, v2, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/mob/mgs/impl/a;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/mob/mgs/impl/a;->d()V

    return-void
.end method

.method private e()Z
    .locals 4

    const-string v0, "[GdCon] HB restart, cancel: "

    const/4 v1, 0x0

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/mob/mgs/impl/a;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 364
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v1

    .line 365
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 368
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic f(Lcom/mob/mgs/impl/a;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/mob/mgs/impl/a;->h:I

    return p0
.end method

.method private f()V
    .locals 2

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/mob/mgs/impl/a;->e()Z

    .line 377
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/mob/mgs/impl/a;->g:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 381
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/mob/mgs/impl/a;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/mob/mgs/impl/a;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mob/mgs/impl/a;->h:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)I
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/mob/mgs/impl/a;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v3, p0, Lcom/mob/mgs/impl/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    if-eqz v2, :cond_0

    .line 192
    invoke-direct {p0, v2}, Lcom/mob/mgs/impl/a;->a(Ljava/nio/channels/SelectionKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public a(Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mgs/impl/a$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/mgs/impl/a$1;-><init>(Lcom/mob/mgs/impl/a;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/mob/mgs/impl/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mgs/impl/a$2;

    invoke-direct {v1, p0}, Lcom/mob/mgs/impl/a$2;-><init>(Lcom/mob/mgs/impl/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
