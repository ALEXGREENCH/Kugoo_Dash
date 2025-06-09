.class public Lcom/mob/mcl/c/f;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/mob/mcl/c/a;

.field final b:Lcom/mob/mcl/c/d;

.field final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/mob/mcl/c/d;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/f;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    iput-object p1, p0, Lcom/mob/mcl/c/f;->b:Lcom/mob/mcl/c/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;
    .locals 4

    .line 57
    iget-wide v0, p1, Lcom/mob/mcl/c/e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mob/mcl/c/f;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/mob/mcl/c/e;->c:J

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/f;->a:Lcom/mob/mcl/c/a;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/c/a;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/mob/mcl/c/f;->a:Lcom/mob/mcl/c/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/net/SocketAddress;ZZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mob/mcl/c/f;->a:Lcom/mob/mcl/c/a;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, v0, Lcom/mob/mcl/c/a;->c:Ljava/net/SocketAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/mob/mcl/c/f;->a:Lcom/mob/mcl/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/a;->a(Z)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 38
    :cond_1
    :goto_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 39
    invoke-virtual {v0, p2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 40
    invoke-virtual {v0, p3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 41
    invoke-virtual {v0, p1, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 43
    new-instance p2, Lcom/mob/mcl/c/a;

    iget-object p3, p0, Lcom/mob/mcl/c/f;->b:Lcom/mob/mcl/c/d;

    invoke-direct {p2, v0, p3}, Lcom/mob/mcl/c/a;-><init>(Ljava/net/Socket;Lcom/mob/mcl/c/d;)V

    iput-object p2, p0, Lcom/mob/mcl/c/f;->a:Lcom/mob/mcl/c/a;

    .line 44
    iput-object p1, p2, Lcom/mob/mcl/c/a;->c:Ljava/net/SocketAddress;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mob/mcl/c/f;->a:Lcom/mob/mcl/c/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mob/mcl/c/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
