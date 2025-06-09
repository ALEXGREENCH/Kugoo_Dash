.class Lcom/mob/commons/ab$1;
.super Lcom/mob/tools/utils/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/ab;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/j;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 10

    .line 473
    sget-object v0, Lcom/mob/commons/p;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    .line 475
    :try_start_0
    sget-object v2, Lcom/mob/commons/p;->i:Ljava/lang/Object;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 476
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/mob/commons/h;->a(I)V

    .line 477
    invoke-static {}, Lcom/mob/commons/b;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 479
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/mob/commons/h;->a(I)V

    const-string v3, "h"

    .line 480
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "k"

    .line 481
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "001Wdd"

    .line 482
    invoke-static {v5}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "s"

    .line 483
    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "002ac"

    .line 484
    invoke-static {v7}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "002;cd(c"

    .line 485
    invoke-static {v8}, Lcom/mob/commons/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 486
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v2, v9

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    aput-object v6, v2, v1

    const/4 v3, 0x4

    aput-object v7, v2, v3

    const/4 v3, 0x5

    aput-object v8, v2, v3

    .line 487
    invoke-static {v2}, Lcom/mob/commons/c;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 490
    :try_start_1
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V

    .line 492
    :cond_0
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
