.class public Lcom/mob/commons/a/j;
.super Lcom/mob/commons/a/c;


# static fields
.field private static c:Lcom/mob/commons/k;


# direct methods
.method public constructor <init>()V
    .locals 9

    const-string v1, "p"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;JJ)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/mob/commons/a/j;->a(I)V

    return-void
.end method

.method private static declared-synchronized m()Z
    .locals 3

    const-class v0, Lcom/mob/commons/a/j;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/mob/commons/a/j;->c:Lcom/mob/commons/k;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/mob/commons/a/j$1;

    invoke-direct {v1}, Lcom/mob/commons/a/j$1;-><init>()V

    sput-object v1, Lcom/mob/commons/a/j;->c:Lcom/mob/commons/k;

    .line 50
    invoke-static {}, Lcom/mob/commons/l;->a()Lcom/mob/commons/l;

    move-result-object v1

    sget-object v2, Lcom/mob/commons/a/j;->c:Lcom/mob/commons/k;

    invoke-virtual {v1, v2}, Lcom/mob/commons/l;->a(Lcom/mob/commons/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcom/mob/commons/a/j;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "004gHca$hd"

    .line 29
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PVMT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "008Vba_bgdg,bgbd8d"

    .line 30
    invoke-static {v1}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/commons/a/j;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v1

    iget-object v1, v1, Lcom/mob/commons/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/commons/j;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 33
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v1

    iget-object v1, v1, Lcom/mob/commons/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 35
    :cond_0
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method protected c()V
    .locals 0

    .line 23
    invoke-static {}, Lcom/mob/commons/a/j;->m()Z

    return-void
.end method
