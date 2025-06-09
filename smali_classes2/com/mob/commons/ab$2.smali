.class Lcom/mob/commons/ab$2;
.super Lcom/mob/tools/utils/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/ab;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 502
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 506
    sget-object v0, Lcom/mob/commons/p;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    sget-object v1, Lcom/mob/commons/p;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 510
    invoke-static {}, Lcom/mob/commons/b;->f()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    const-string v2, "002eg"

    .line 511
    invoke-static {v2}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 513
    new-instance v1, Lcom/mob/commons/ab$2$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/ab$2$1;-><init>(Lcom/mob/commons/ab$2;)V

    invoke-static {v2, v1}, Lcom/mob/commons/c;->a(Ljava/util/ArrayList;Lcom/mob/tools/utils/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 520
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 522
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
