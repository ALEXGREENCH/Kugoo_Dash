.class Lcom/mob/tools/utils/MobPersistence$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/MobPersistence;


# direct methods
.method private constructor <init>(Lcom/mob/tools/utils/MobPersistence;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/utils/MobPersistence;Lcom/mob/tools/utils/MobPersistence$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$d;-><init>(Lcom/mob/tools/utils/MobPersistence;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v0, 0xbb8

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v2, 0x0

    .line 102
    :try_start_1
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->b(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence;->b(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 105
    :try_start_2
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->b(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 106
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$i;->b()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move-object v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    .line 117
    :try_start_4
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    goto :goto_3

    :catchall_2
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 112
    :goto_1
    :try_start_5
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 115
    :try_start_6
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    .line 117
    :try_start_7
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_4

    .line 121
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-nez v3, :cond_4

    .line 123
    :try_start_8
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 128
    :try_start_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mob/tools/utils/MobPersistence$j;

    .line 129
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence;->b(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence$j;->a(Lcom/mob/tools/utils/MobPersistence$j;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    .line 132
    :cond_2
    :try_start_a
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_5

    :catchall_4
    move-exception v2

    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 133
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 136
    :cond_3
    :goto_5
    :try_start_b
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mob/tools/utils/MobPersistence$i;->b()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_6

    :catchall_5
    move-exception v2

    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/utils/MobPersistence$i;->b()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 137
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 145
    :cond_4
    :goto_6
    :try_start_c
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->d(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_8

    :catchall_6
    move-exception v2

    .line 115
    :try_start_d
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->a(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v3

    .line 117
    :try_start_e
    iget-object v4, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 119
    :goto_7
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    move-exception v2

    .line 141
    :try_start_f
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 145
    :try_start_10
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v2}, Lcom/mob/tools/utils/MobPersistence;->d(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p0, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8
    return-void

    :catchall_a
    move-exception v2

    .line 145
    :try_start_11
    iget-object v3, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v3}, Lcom/mob/tools/utils/MobPersistence;->d(Lcom/mob/tools/utils/MobPersistence;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_9

    :catchall_b
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$d;->a:Lcom/mob/tools/utils/MobPersistence;

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence;->c(Lcom/mob/tools/utils/MobPersistence;)Lcom/mob/tools/utils/MobPersistence$i;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 149
    :goto_9
    throw v2
.end method
