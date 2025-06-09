.class public Lcom/mob/tools/gui/CachePoolInner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;,
        Lcom/mob/tools/gui/CachePoolInner$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private pool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mob/tools/gui/CachePoolInner<",
            "TK;TV;>.Node<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private poolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    .line 25
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    if-lez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/CachePoolInner$Node;

    if-eqz v0, :cond_0

    .line 108
    iget v1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    invoke-static {v0}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 109
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    if-eqz v1, :cond_0

    .line 110
    iget-object v2, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    iget-object v0, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v0, :cond_6

    .line 68
    :cond_0
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    iget v2, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    if-le v0, v2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/gui/CachePoolInner$Node;

    if-eqz v0, :cond_0

    .line 71
    iget v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    invoke-static {v0}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 72
    iget-object v2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    if-eqz v2, :cond_0

    .line 73
    iget-object v3, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    iget-object v0, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/gui/CachePoolInner$Node;

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    .line 80
    iget-object v3, v2, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_5

    :cond_3
    if-eqz p1, :cond_2

    iget-object v3, v2, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 88
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$102(Lcom/mob/tools/gui/CachePoolInner$Node;J)J

    .line 90
    iget-object p1, v2, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 94
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :cond_6
    monitor-exit p0

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 62
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/CachePoolInner;->put(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)Z"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v0, :cond_2

    .line 35
    :try_start_1
    new-instance v0, Lcom/mob/tools/gui/CachePoolInner$Node;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/mob/tools/gui/CachePoolInner$Node;-><init>(Lcom/mob/tools/gui/CachePoolInner;Lcom/mob/tools/gui/CachePoolInner$1;)V

    .line 36
    iput-object p1, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    .line 37
    iput-object p2, v0, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$102(Lcom/mob/tools/gui/CachePoolInner$Node;J)J

    .line 39
    invoke-static {v0, p3}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$202(Lcom/mob/tools/gui/CachePoolInner$Node;I)I

    .line 41
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 42
    iget p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 43
    :cond_0
    :goto_0
    iget p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    if-le p1, p2, :cond_1

    .line 44
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/CachePoolInner$Node;

    if-eqz p1, :cond_0

    .line 46
    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    invoke-static {p1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 47
    iget-object p2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    if-eqz p2, :cond_0

    .line 48
    iget-object p3, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    invoke-interface {p2, p3, p1}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 55
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :cond_2
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnRemoveListener(Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iget v0, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimBeforeTime(J)V
    .locals 4

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    if-lez v1, :cond_3

    .line 121
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_0
    if-ltz v0, :cond_2

    .line 123
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/CachePoolInner$Node;

    .line 124
    invoke-static {v1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$100(Lcom/mob/tools/gui/CachePoolInner$Node;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mob/tools/gui/CachePoolInner$Node;

    if-eqz v1, :cond_0

    .line 127
    iget v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    invoke-static {v1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 128
    iget-object v2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    if-eqz v2, :cond_0

    .line 129
    iget-object v3, v1, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    iget-object v1, v1, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 137
    :cond_2
    :goto_1
    iget p1, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->capacity:I

    if-le p1, p2, :cond_3

    .line 138
    iget-object p1, p0, Lcom/mob/tools/gui/CachePoolInner;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/CachePoolInner$Node;

    if-eqz p1, :cond_2

    .line 140
    iget p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    invoke-static {p1}, Lcom/mob/tools/gui/CachePoolInner$Node;->access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/mob/tools/gui/CachePoolInner;->poolSize:I

    .line 141
    iget-object p2, p0, Lcom/mob/tools/gui/CachePoolInner;->listener:Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;

    if-eqz p2, :cond_2

    .line 142
    iget-object v0, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->key:Ljava/lang/Object;

    iget-object p1, p1, Lcom/mob/tools/gui/CachePoolInner$Node;->value:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Lcom/mob/tools/gui/CachePoolInner$OnRemoveListener;->onRemove(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 147
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
